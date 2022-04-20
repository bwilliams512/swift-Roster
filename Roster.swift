/*
I have been hired by a school to help them sort their student roster.

After a database failure, the school lost its entire student roster.
Fortunately, the school was able to get lists of the students who are enrolled in each class.

It’s my job to help sort this data and provide the school with valuable information using sets.
*/

var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// All Student Roster............................

// Combine all the students into one set
var allStudents = spanish101.union(german101)
allStudents = allStudents.union(advancedCalculus)
allStudents = allStudents.union(artHistory)
allStudents = allStudents.union(englishLiterature)
allStudents = allStudents.union(computerScience)

// Identify names of all the students and how many students are currently enrolled in at least 1 class
for student in allStudents {
  print(student)
}

print("There are \(allStudents.count) individual students in total.")

// Language Classes..............................

// Identify which students are not taking any language classes
var language = spanish101.union(german101)
var noLanguage = allStudents.subtracting(language)
print("Students not taking any language classes: \(noLanguage)")

// Identify which students are taking spanish101 or german101, but not both
var onlyOneLanguage = spanish101.symmetricDifference(german101)
print("Students taking only one language: \(onlyOneLanguage)")

// The school offers a language award to any student taking all three of the following classes: spanish101, german101, and englishLiterature
var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print("Students eligible for the language award: \(languageAwardWinners)")

// Class Size....................................

// The school wants information about the number of classes that have 7 or more students
var sevenPlus = 0

var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]

for targetClass in classSet {
  if targetClass.count >= 7 {
    sevenPlus += 1
  }
}
print ("There are \(sevenPlus) classes with seven or more students.")
