10.times do |blog|
  Blog.create!(
        title: "My Blog Post_#{blog}",
        body: "Typewriter kinfolk seitan, cred chicharrones hexagon godard hashtag tofu. Whatever 3 wolf moon humblebrag craft beer, subway tile salvia bitters blue bottle meh air plant aesthetic banjo flannel. Hella taxidermy lyft, locavore cronut kitsch next level narwhal quinoa waistcoat literally sriracha humblebrag austin roof party. Godard typewriter green juice wolf, +1 ugh tacos pug ethical plaid. Af cold-pressed hell of pok pok. Af food truck kinfolk aesthetic scenester squid. Williamsburg woke semiotics pok pok, 3 wolf moon pabst etsy brooklyn craft beer VHS."
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
        title: "Rails_Skill_#{skill}",
        percent_utilized: rand(10..50)
    )
end

puts "5 skill percent_utilized created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My Terrific Service",
    body: "Skateboard 3 wolf moon coloring book quinoa pitchfork. VHS post-ironic everyday carry, disrupt cred meh fam vaporware enamel pin small batch messenger bag ennui ugh prism.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"

    )
end
