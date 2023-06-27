# Choosing a Component Structure

## Abstract

This project is currently (June '23) organized using the *Atomic Design*. The team wanted to reflect on 
this choice and consider alternatives.

The following introduces the *Atomic Design* and an alternative pattern, *Feature-Based Architecture*, and 
discusses advantages and disadvantages of each of the two approaches. There are other patterns, but for
expediency's sake a single mainstream alternative was selected.

## Atomic Design

The [Atomic Design](https://atomicdesign.bradfrost.com/) groups UI components into the following five
groups (called stages):

* Atoms: don't contain any other components
* Molecules: simple UI components containing several atoms, but no other component type
* Organisms: complex UI components containing a mix of molecules and atoms, or only molecules
* Templates: basically wireframes
* Screens: contain a mix of organisms, molecules and atoms

I found it hard to extract, or formulate, the actual advantage of using the *Atomic Design*. And I think this is
so because the original idea by Brad Frost and then his concept date back to a time (2016?) when web applications
often didn't use any design pattern or reusable components and didn't try to abstract behaviour and presentation.

Brad Frost writes:

> One of the biggest advantages atomic design provides is the ability to quickly shift between abstract and concrete.
> We can simultaneously see our interfaces broken down to their atomic elements and also see how those elements 
> combine together to form our final experiences.

I can only assume that this was a new concept to Brad Frost at the time. Fast-forward to the present time, after most
of us have gone through the development of a component based frontend application (say, React), this comes as
second nature to us and doesn't motivate us adopting this particular design pattern. When you read Brad Frost's book,
it goes a bit more into what distinguishes an organism from a molecule, and the advantage of committing to the 
simplicity of a self-contained molecule, rather than skipping the effort to break organisms apart into their 
molecules in a second, refactoring step. Forcing to distinguish between simple and complex component could be a 
motivation to use the *Atomic Design*.

### Is it scalable? 

According to its author, Brad Frost, the Atomic Design is meant for projects at any scale. 
Yet, the Atomic Design is, in some ways, a derivative of what 
[Ryan Dsilva labels "Folders By Type/Domain"](https://medium.com/flutter-community/scalable-folder-structure-for-flutter-applications-183746bdc320) - a 
pattern he considers not necessarily scalable. He writes:

> This pattern is extremely intuitive and very beginner-friendly. This pattern works well with smaller 
> projects but as soon as you start having more than 10–15 files of each type, it quickly gets extremely 
> difficult to manage and maintain.

It may be argued that relating *Atomic Design* to *Folders By Type/Domain* does not take into account the
additional organization that goes into the *Widgets* type. Still, there is no question that a larger scale
project will have more than 10-15 *atoms*, *molecules* and *screens* and Ryan's other statements rings true:

> Most of the developer time is spent searching for the right file and hence this pattern does not 
> scale well for large projects.

Imagine we are searching for a widget that renders a distinctive checkbox, which is only seen on a single
screen. We can assume that the checkbox is an *Atom*, so to into the `Atoms` folder, where there are 200 
files and several named such that could represent a checkbox. If all widgets used by this screen were in 
a sub folder of the screen, we'd have fewer files to search in. 

### Advantages:
* Solid following, especially among web developers, which might help coordinating with UX
* Memorable names for each level of component groups
* It forces us to consider the dependencies of each component.
* Committing to creating simple components (molecules) helps UI designers and developers adhere to the 
  [single responsibility principle](https://en.wikipedia.org/wiki/Single-responsibility_principle)
* It clearly identifies components that have no dependencies to others (*Atoms*)
* It might help estimating LOE after considering where in the hierarchy a new component would be correctly placed

### Disadvantages:
* Questionable scalability with possibly considerably searching for components
* Does not indicate any relationships between parent/child components


## Feature-Based Architecture

With a feature-based architecture, you organize components based on the features or user flows of your application. 
Each feature can have its own set of components, including screens, widgets, models, and services. This approach can 
simplify the development process by providing clear boundaries between different features and promoting code reusability.

[Ryan Dsilva suggests this folder structure](https://medium.com/flutter-community/scalable-folder-structure-for-flutter-applications-183746bdc320):

    --lib
    |--feature_1
    |  |--screens
    |  |--widgets
    |  |--models
    |  |--services
    |  |--view_models
    |--feature_2
    |  |--screens
    |  |--widgets
    |  |--models
    |  |--services
    |  |--view_models
    |....

Our features could be:

* create_account
* find_mentor
* request_mentoring
* chat
* ...

That leaves out widgets, models and services that are shared between multiple features. Ryan suggests
to consider organizing some of those in packages.

### Advantages
* User and experience centered pattern
* Easier navigation inside a large project that has many widgets and screens
* Less prone to dead (unused) screens and components: dead components are easier identified as not, or no longer, 
  belonging to the feature they are saved under 

### Disadvantages
* More maintenance effort if the features aren't well-defined at the start
* Might be overkill for a smaller project
* Deeper folder structure - more clicks to open sub folders
* Harder to keep a homogenous organization across features if coders or teams are dedicated to features
  with less coordination with coders from other features


## Summary, Recommendation

Our actual choice of either *Atomic Design* or *Feature-Based Architecture* is surely of lesser consequence
than how rigorously we will follow the pattern we chose. 

It is likely less effort to maintain a clean organization using the *Atomic Design* - which would be a 
strong argument to stick with is and clean up what we have. 

OTOH, the app the MicroMentor team will eventually have to build and publish is rather feature rich and not at all simple. 
Projecting the app development beyond the Google Fellowship project I feel we would arrive at a more effective
organization with the *Feature-Based Architecture*. 

If we were to choose *Feature-Based Architecture* we could save atomic widgets into their own subfolder:


    --lib
    |--feature_1
    |  |--screens
    |  |--widgets
    |  |  |--atoms
    |  |--models
    |  |--services
    |  |--view_models
    |--feature_2
    |  |--screens
    |  |--widgets
    |  |  |--atoms
    |  |--models
    |  |--services
    |  |--view_models
    |....

And of course, we could do the same with molecules. 

---

## Comments From The Team

[@LucasMagnum](https://github.com/LucasMagnum):

> I do personally like the feature centred architecture. Even though I understand the benefits of granular components 
> (atoms), it feels like an over specialisation for me (YAGNI).
>
> I vote for using the Feature-Based architecture, I'd consider evaluating the atomic design later on in the project 
> (perhaps after the fellowship).

[jupblb](https://github.com/jupblb)

> I agree with Lucas. At this moment we should maximize our initial velocity of developing the product. This can 
> be refactored later.

[andersan](https://github.com/andersan)

> Feature based pattern looks good to me.

> What are the implications for a design kit? I had imagined that atoms would contain things like different kinds of
> buttons, a date dropdown, filterable multiselect input, and other low-level components that will be used across
> the entire app. For now, adding these to the relevant feature is good. Most of them will probably only be used 
> in one feature (e.g. onboarding and editing a profile for inputs). Later, maybe we will have a shared folder at 
> the feature level (same as feature_1, feature_2, etc.).
>
> I'm also not great at Flutter, so maybe I'm missing that such low-level widgets are not necessary. Can we 
> just stick to using Material widgets, or will we need many customized low-level widgets?

## Poll Taken By Team

* Uses both: 1
* Uses only Feature based: 5
* Uses only Atomic design: 0
