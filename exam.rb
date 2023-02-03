def evaluation_commentaire 
  puts "Veuillez indiquer une note sur une échelle de 1 à 5."
  point = gets.to_i
  while true
      if point <= 0 || point > 5
          puts "Indiquez sur une échelle de 1 à 5"
          point = gets.to_i
      else
          puts "Merci de saisir un commentaire"
          comment = gets
          post = "Point :.#{point}Commentaire.#{comment}"
          File.open("data.txt", "a") do |file|
              file.puts(post)
          end
          break
      end
  end
end
def resultats_present
  puts "Les résultats obtenus jusqu'à présent."
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end

while true
  puts "Sélectionnez le processus que vous souhaitez mettre en œuvre"
  puts "1:Saisir les points d'évaluation et les commentaires"
  puts "2:Vérifiez les résultats obtenus jusqu'ici."
  puts "3:quitter"
  num = gets.to_i

  case num
  when 1
      evaluation_commentaire
  when 2
      resultats_present
  when 3
    puts "Fin"
    break
  else
    puts "Veuillez entrer 1 à 3"
  end
end