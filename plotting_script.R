setwd("C:/Users/0to9a/Desktop/Phonetics_HW4")
talker1 = read.csv("Talker3WithVowels.csv")
attach(talker1)
plot(F2,F1,xlim=c(2400,800),ylim=c(1000,200),type="n", main="Talker 3")
mycolors = list("red","blue","green","brown","black","grey")
vowel_words = unique(Vowel)
for (i in 1:length(vowel_words)){
	cur = subset(talker1, Vowel == vowel_words[[i]])
	attach(cur)
	print(vowel_words[[i]])
	print(mycolors[[i]])
	points(F2,F1, col = mycolors[[i]], pch=19)
}
