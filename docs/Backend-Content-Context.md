# How Content Options are provided by the backend

There are a number of constants used throughout the app and app logic that are
provided by the backend. These include:
- Expertises
- Industries
- Languages
- Countries
- Company Stages
- Company Types
- Preset Gender Options (users can still enter any gender and pronouns)
- Education Levels

There may be more in the future, but these are the ones that are currently
implemented.

In the backend, all of these types extend the "Option" type in the backend's GraphQL schema,
so they can be referred to as `Option`s.

## Motivation for storing this in backend vs as constants in the app

By moving this to the app's backend, we can update Options whenever we'd
like and be sure they are provided to all users. If they were stored in the app, 
we would have to wait for a new app release to be approved, released, and 
installed across devices before users would see the new options.

Additionally, we sometimes need to offer different options based on criteria
around the user. This logic will be handled by the backend.

For example, there are countries where it is illegal to be queer. We do not 
want to provide users with an option for "Non-binary" or "Genderqueer" in 
these countries, as it is a safety risk for those users. We can use the 
backend to determine which options to provide based on the user's country.

## Places this should be used

The screens where this is likely to be used include:
- Profile display: Displaying options such as expertises, industries, business stage and country/countries as text or "badges" accompanied by icons
- Editing a profile: Selecting options such as expertises, industries, country/countries, business stage, business type, languages, gender, and education levels as options
- Onboarding: Same as editing a profile
- Explore page: filters for searches

The above list is subject to change and isn't comprehensive, just some examples.

## Structure of this data

These types all have following fields:
- `textId` (string):
  - A unique identifier for the option
  - This is used to identify the option in the app
  - This is also used to identify the option in the backend
  - `textId`s provided by the backend should never change, as it is used for app logic
- `translatedValue` (string):
  - The translated display text for the option
  - This is used to display the option in the user's language
  - English is the fallback if no translation is available
  - `translatedValue` may change at any time, so the app should not rely on this value for logic
- `value` (string): The English-language display text for the option. Unlikely to be used in the Flutter app. `value` may change at any time. Use `textId` for app logic and `translatedValue` for display.
- `id`: database ID for the type, should not be used as it may change
- `mm2Value` and `mm2Id`: variables used by the backend for synchronizing data with MicroMentor's Django app

Some types have unique fields, too:
- `Language`
  - `isUiLanguage` (boolean): Whether this language can used for the app's UI. Some languages
  are only available for matching/profile purposes (e.g. Vietnamese, French).
  English/Arabic/Spanish/Somali/Indonesian/Russian are the UI languages 
  MicroMentor will support at launch. 
  - `shortLangCode` (string): Same as `textId` as of writing. The two-letter language code (ISO 639-1).
  - `longLangCode` (string): The three-letter language code (ISO 639-2/T).
- `Country`
  - `alpha2Key` (string): Same as `textId` as of writing. The two-letter country code (ISO 3166-1 alpha-2).
  - `alpha3Key` (string): The three-letter country code (ISO 3166-1 alpha-3). Not currently used.


The GraphQL queries for options are named `findExpertises`, `findCountries`, `findGenders`, etc.

Here are some examples of queries and responses:

GraphQL query to fetch expertises:
```graphql
query Q {
  findExpertises {
    textId
    value
    translatedValue
  }
}
```

Response:
```json
{
  "data": {
    "findExpertises": [
      {
        "textId": "accountingAndFinance",
        "value": "Accounting and Finance",
        "translatedValue": "Accounting and Finance"
      },
      {
        "textId": "humanResources",
        "value": "Human Resources",
        "translatedValue": "Human Resources"
      },
      {
        "textId": "lawAndLegal",
        "value": "Law and Legal",
        "translatedValue": "Law and Legal"
      },
      // ... etc
    ]
  }
} 
```

This data can also be retrieved in-context with a User or GroupMembership.
For example, if you have a mentee User, you can get their countryOfResidence and soughtExpertises:
```graphql
# FindMenteeUsers is a custom name, this could be called anything
query FindMenteeUsers($options: FindObjectsOptions, $filter2: UserListFilter, $match2: UserInput) {
  findUsers(options: $options, filter: $filter2, match: $match2) {
    cityOfResidence
    regionOfResidence
    countryOfResidenceTextId # get the text ID, not the translated value
    countryOfResidence {
        translatedValue
        textId # could also get the text ID here
    }
    jobTitle
    groupMemberships {
        ... on MenteesGroupMembership {
            soughtExpertisesTextIds # get the text IDs, not the translated values
            # this is an array of expertises:
            soughtExpertises {
                translatedValue
                textId # could also get the text ID here
            }
            # this is a single industry:
            industry {
                translatedValue
                textId # could also get the text ID here
            }
            industryTextId # get the text ID, not the translated value
        }
    }
    companies {
        companyStage {
            translatedValue
        }
    }
  }
}
```

Response:
```json
      {
        "cityOfResidence": "Portland",
        "regionOfResidence": "Oregon", // Region format is not yet determined. Might be "OR" instead of "Oregon" for US states.
        "countryOfResidenceTextId": "US",
        "countryOfResidence": {
          "translatedValue": "United States of America",
          "textId": "US"
        },
        "jobTitle": null,
        "groupMemberships": [
          {
            "soughtExpertisesTextIds": [
              "contracts",
              "financialPlanning",
              "fundraising"
            ],
            "soughtExpertises": [
              {
                "translatedValue": "Contracts",
                "textId": "contracts"
              },
              {
                "translatedValue": "Financial Planning",
                "textId": "financialPlanning"
              },
              {
                "translatedValue": "Fundraising",
                "textId": "fundraising"
              }
            ],
            "industry": null,
            "industryTextId": null
          }
        ],
        "companies": [
          {
            "companyStage": null // not sure if this is a required field, but it may return null. CompanyStageTextId would also be null.
          }
        ]
      },
      {
        "cityOfResidence": null,
        "regionOfResidence": null,
        "countryOfResidenceTextId": "US",
        "countryOfResidence": {
          "translatedValue": "United States of America",
          "textId": "US"
        },
        "jobTitle": "CEO and Co-Founder",
        "groupMemberships": [
          {
            "soughtExpertisesTextIds": [
              "eCommerce",
              "fundraising",
              "webMarketing"
            ],
            "soughtExpertises": [
              {
                "translatedValue": "E-Commerce",
                "textId": "eCommerce"
              },
              {
                "translatedValue": "Fundraising",
                "textId": "fundraising"
              },
              {
                "translatedValue": "Web Marketing",
                "textId": "webMarketing"
              }
            ],
            "industry": {
              "translatedValue": "Retail",
              "textId": "retail"
            },
            "industryTextId": "retail"
          }
        ],
        "companies": []
      },
```