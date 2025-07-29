# SEIMobileAssessment

Implementation of the [Figma design](https://www.figma.com/design/qs6ESEmaqnDd41enb3r4Gn/Devs?node-id=1641-200&m=dev) that was given to me through my contacts at Insight Global. The requested asessment was to reproduce the layout using both UIKit and SwiftUI coding.

## Development Notes:

1. As I could not discern a definition of dark-mode styling in the Figma I have opted to keep the app running in Light mode permanently by updating the Info.plist and specifying an appearance key of **light**
2. A bottom area tab bar was present in the Figma but there were no specified screens for the items other than the **Home** screen and its navigable views so I just put a random screen that displays "Content Not Yet Defined!!!"
3. The code was written for iOS and tested on iOS devices but I have not yet removed the options to allow the app to run on iPad, visionPro or MacOS. YMMV when testing on those devices. 

## Code Organization:

1. The main entry point of the iOS app is SEIMobileAssessmentApp which uses the MainNavigationView to display a simple TabView navigator in the bottom of the screen
2. The initial tab displayed is the DashboardView which is tied to the **Home** button in the TabView
3. The DashboardView is basically split into the following components from top to bottom: UserProfileView, CourseProgressView, A horizontal scrolling list of TaskCardViews, StudentResourcesView and finally another horizontal scrolling list of NewsCardViews
4. There is a `NavigationPath` state variable in the DashboardView that is used to determine which navigable subview is displayed
5. Tapping on any of the TaskCardViews navigates over to the CourseMenuView which will have a container to the view representing the CourseMenuViewController which is the specified UIKit element that displays course related items.
6. Tapping on any of the tableviewcell in CourseMenuViewController invokes a coordinator by means of a Coordinator object defined in CourseMenuContainerView and a CoordinatorProtocol defined in CourseMenuViewController. These two objects allow passing of user interaction from a UIKit based object up to SwiftUI thereby enabling SwiftUI based navigation via the NavigationView defined in DashboardView. This pushes the user to the QuizDetailsView
7. The QuizDetailsView was necessary to allow the same flow of organization logic from the QuizDetailsViewController and its SwiftUI rendering QuizDetailsContainerView. It has no further interactions other than a custom back button to navigate back up to CourseMenuView as none was defined. However the navigation can easily be added by specifying the action in the `didSelectRowAtIndexPath` function in the QuizDetilsViewController 
