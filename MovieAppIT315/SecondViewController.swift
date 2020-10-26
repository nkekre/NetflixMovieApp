//
//  SecondViewController.swift
//  MovieAppIT315
//
//  Created by Namita Kekre on 10/25/20.
//  Copyright © 2020 nkekre Org. All rights reserved.
//

import UIKit
import AVKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblLength: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCast: UILabel!
    @IBOutlet weak var lblPercentage: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    
    @IBOutlet weak var likeBtn: UIButton!
    
    
    
    
    var siteSelected = "https://www.netflix.com"
    var movieReelSound:AVAudioPlayer!
    
    @IBAction func backBtn(_ sender: Any) {
        //print("Back button pressed")
        self.performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    
    //movie arrays
    var movieComedy = [MovieOption]()
    var movieHorror = [MovieOption]()
    var movieRomance = [MovieOption]()
    var movieAction  = [MovieOption]()
    var allMovies = [MovieOption]()
    
    func populateComedy() {
        let mv1 = MovieOption(nam: "The Sleepover", desc: "In the summer before starting high school, Julie (Alexa Vega) and her best friends, Hannah, Yancy, and Farrah, have a slumber party. They decide they're going to use the night to shed their nerdy reputations, and they end up in a scavenger hunt against a group of 'popular' girls. To win, Julie and her friends have to steal a car and a boy's underpants and sneak into a nightclub, all without Julie's mom finding out.", gen: "Comedy")
        mv1.length = "1h 43m"
        mv1.year = "2020"
        mv1.rating = "TV-PG"
        mv1.cast = "Sadie Stanley, Maxwell Simkins, Ken Marino, more"
        mv1.percentage = 0
        mv1.image = "TheSleepover.jpg"
        mv1.trailerURL = "https://www.youtube.com/watch?v=zqhfd79fbFs"
        movieComedy.insert(mv1, at:0)
        allMovies.insert(mv1, at:0)
        
              
        let mv2 = MovieOption(nam: "A Bad Moms Christmas", desc: "Under-appreciated and overburdened moms Amy, Kiki and Carla rebel against the challenges and expectations of the Super Bowl for moms: Christmas. As if creating the perfect holiday for their families isn't hard enough, they'll have to do it while hosting and entertaining their own respective mothers when they come to visit.", gen: "Comedy")
        mv2.length = "1h 44m"
        mv2.year = "2017"
        mv2.rating = "R"
        mv2.cast = "Mila Kunis, Kristen Bell, Kathryn Hahn, more"
        mv2.percentage = 58
        mv2.image = "BadMomsChristmas.jpeg"
        mv2.trailerURL = "https://www.youtube.com/watch?v=w2bnY9oWVFw"
        movieComedy.append(mv2)
        allMovies.append(mv2)
        
              
        let mv3 = MovieOption(nam: "Lady Bird", desc: "Christine 'Lady Bird' McPherson (Saoirse Ronan) is a high school senior from the 'wrong side of the tracks'. She longs for adventure, sophistication, and opportunity, but finds none of that in her Sacramento Catholic high school. This movie follows the title character's senior year in high school, including her first romance, her participation in the school play, and most importantly, her applying for college.", gen: "Comedy")
        mv3.length = "1h 33m"
        mv3.year = "2017"
        mv3.rating = "R"
        mv3.cast = "Saoirse Ronan, Laurie Metcalf, Tracy Letts, more"
        mv3.percentage = 99
        mv3.image = "LadyBird.jpg"
        mv3.trailerURL = "https://www.youtube.com/watch?v=cNi_HC839Wo"
        movieComedy.append(mv3)
        allMovies.append(mv3)
              
        let mv4 = MovieOption(nam: "Safety Not Guaranteed", desc: "Darius is a young intern at a Seattle-based magazine and jumps at the chance to investigate the author of a classified ad seeking someone to travel back in time with. Along with Jeff, the staff writer, and Arnau, a fellow intern, the three go on a road trip to a coastal town.The closer they become and the more they understand about each other, the less clear it becomes if Kenneth is just crazy or if he actually is going to successfully travel back in time.", gen: "Comedy")
        mv4.length = "1h 25m"
        mv4.year = "2012"
        mv4.rating = "R"
        mv4.cast = "Aubrey Plaza, Mark Duplass, Jake Johnson, more"
        mv4.percentage = 91
        mv4.image = "SafetyNotGuaranteed.jpg"
        mv4.trailerURL = "https://www.youtube.com/watch?v=73jSnAs7mq8"
        movieComedy.append(mv4)
        allMovies.append(mv4)
            
        let mv5 = MovieOption(nam: "Murder Mystery", desc: "NYPD Officer Nick Spitz (Adam Sandler) has recently failed his detective exam, but doesn't want to tell his hairdresser wife Audrey (Jennifer Aniston). After a dinner for their 15th wedding anniversary, Audrey confronts Nick about how despite his promises after they got married they never went to Europe. Nick panics and says he was planning to surprise her, and the two head off to Europe. During the flight, Audrey meets Charles Cavendish (Luke Evans), and the two strike up a conversation. This chance encounter leads to them being framed for the murder of an elderly billionaire.", gen: "Comedy")
        mv5.length = "1h 37m"
        mv5.year = "2019"
        mv5.rating = "PG-13"
        mv5.cast = "Adam Sandler, Jennifer Anniston, Luke Evans, more"
        mv5.percentage = 43
        mv5.image = "MurderMystery.jpg"
        mv5.trailerURL = "https://www.youtube.com/watch?v=5YEVQDr2f3Q"
        movieComedy.append(mv5)
        allMovies.append(mv5)
    }
    
    func populateHorror() {
        let mv1 = MovieOption(nam: "Eli", desc: "Eli Miller is a young boy suffering from a rare disease that causes severe allergic reactions to the outdoors, forcing him to live his life in protective gear. His parents, Rose and Paul, have taken him to Dr. Isabella Horn's secluded medical facility, a large, old house that has been modernized and quarantined.", gen: "Horror")
        mv1.length = "1h 38m"
        mv1.year = "2019"
        mv1.rating = "TV-MA"
        mv1.cast = "Charlie Shotwell, Lili Taylor, Kelly Reilly, more"
        mv1.percentage = 48
        mv1.image = "Eli2019.jpg"
        mv1.trailerURL = "https://www.youtube.com/watch?v=qfSTiAw1rkM"
        movieHorror.insert(mv1, at:0)
        allMovies.append(mv1)
        
        let mv2 = MovieOption(nam: "Hush", desc: "Author Maddie Young lives a life of utter isolation after losing her hearing as a teenager. She’s retreated form society, living in seclusion and existing in a completely silent world. But one night, the fragile world is shattered when the masked face of a psychotic killer appears in her window. Without another living soul for miles, and with no way to call for help, it appears that Maddie is at the killer’s mercy. As this horrifying game of cat and mouse escalates to a breathless fever-pitch, Maddie must push herself beyond her mental and physical limits in order to survive the night.", gen: "Horror")
        mv2.length = "1h 27m"
        mv2.year = "2016"
        mv2.rating = "R"
        mv2.cast = "John Gallagher Jr., Kate Siegel, Michael Trucco, more"
        mv2.percentage = 93
        mv2.image = "Hush.png"
        mv2.trailerURL = "https://www.youtube.com/watch?v=SdSsXiEIDSA"
        movieHorror.append(mv2)
        allMovies.append(mv2)
        
        let mv3 = MovieOption(nam: "Creep 2", desc: "A prolific serial killer, identifying as Aaron after a previous victim, finds himself dissatisfied with his killings and undergoing a midlife crisis. When his latest ad to be documented lures videographer Sara to his home, Aaron changes his approach by admitting he is a serial killer and will let her live for the next 24 hours if she records a documentary on his life.", gen: "Horror")
        mv3.length = "1h 18m"
        mv3.year = "2017"
        mv3.rating = "TV-MA"
        mv3.cast = "Mark Duplass, Karan Soni, Patrick Blice, more"
        mv3.percentage = 100
        mv3.image = "Creep2.jpg"
        mv3.trailerURL = "https://www.youtube.com/watch?v=838PE2pbzM4"
        movieHorror.append(mv3)
        allMovies.append(mv3)
        
        let mv4 = MovieOption(nam: "Birdbox", desc: "When a mysterious force decimates the population, only one thing is certain -- if you see it, you die. The survivors must now avoid coming face to face with an entity that takes the form of their worst fears. Searching for hope and a new beginning, a woman and her children embark on a dangerous journey through the woods and down a river to find the one place that may offer sanctuary. To make it, they'll have to cover their eyes from the evil that chases them -- and complete the trip blindfolded.", gen: "Horror")
        mv4.length = "2h 4m"
        mv4.year = "2018"
        mv4.rating = "R"
        mv4.cast = "Sandra Bullock, Trevante Rhodes, John Malkovich, more"
        mv4.percentage = 63
        mv4.image = "BirdBox.jpg"
        mv4.trailerURL = "https://www.youtube.com/watch?v=o2AsIXSh2xo"
        movieHorror.append(mv4)
        allMovies.append(mv4)
        
        let mv5 = MovieOption(nam: "We Summon the Darkness", desc: "In the hot summer of 1988, against the backdrop of mass hysteria over satanic ritualistic homicides, the leather-clad metalhead, Alexis, and her best friends, Val and Beverly, embark on a road trip to a heavy-metal concert. Their lives change forever when they run into three men and bring them back for an afterparty at Alexis’ country home. Now, blood stains the walls of Alexis' secluded mansion in the woods. Who shall live, and who shall die after summoning the darkness?", gen: "Horror")
        mv5.length = "1h 30m"
        mv5.year = "2020"
        mv5.rating = "R"
        mv5.cast = "Alexandria Daddario, Amy Forsyth, Keean Johnson, more"
        mv5.percentage = 69
        mv5.image = "SummonDarkness.jpg"
        mv5.trailerURL = "https://www.youtube.com/watch?v=ChksJ8AL9Lk"
        movieHorror.append(mv5)
        allMovies.append(mv5)
    }
    
    func populateRomance() {
        let mv1 = MovieOption(nam: "Pride and Prejudice", desc: "The classic tale of love and misunderstanding unfolds in class-conscious England near the close of the 18th century. The five Bennet sisters – Elizabeth, or Lizzie, Jane, Lydia, Mary, and Kitty – have been raised well aware of their mother’s fixation on finding them husbands and securing set futures. The spirited and intelligent Elizabeth, however, strives to live her life with a broader perspective, as encouraged by her doting father.", gen: "Romance")
        mv1.length = "1h 58m"
        mv1.year = "2005"
        mv1.rating = "PG"
        mv1.cast = "Keira Knightley, Matthew Mcfadyen, Brenda Blethyn, more"
        mv1.percentage = 100
        mv1.image = "PrideAndPrejudice.jpg"
        mv1.trailerURL = "https://www.youtube.com/watch?v=1dYv5u6v55Y"
        movieRomance.insert(mv1, at:0)
        allMovies.append(mv1)
        
        let mv2 = MovieOption(nam: "To All Boys I've Loved Before", desc: "Teen Lara Jean Covey lives a normal, boring high school life until some unexpected letters get released to all her former crushes by her sister Kissy in hopes to give Lara Jean a more interesting life. At school her life is thrown into turmoil when these boys start to approach her about their letters. Through out some very unusual events Lara Jean finds herself and maybe even a real relationship.", gen: "Romance")
        mv2.length = "1h 40m"
        mv2.year = "2018"
        mv2.rating = "TV-14"
        mv2.cast = "Lana Condor, Noah Centineo, Janel Parrish, more"
        mv2.percentage = 96
        mv2.image = "ToAllBoys.jpeg"
        mv2.trailerURL = "https://www.youtube.com/watch?v=555oiY9RWM4"
        movieRomance.append(mv2)
        allMovies.append(mv2)
        
        let mv3 = MovieOption(nam: "Someone Great", desc: "Aspiring music journalist Jenny (Gina Rodriguez) has just landed her dream job at an iconic magazine and is about to move to San Francisco. Rather than do long distance, her boyfriend of nine years (Lakeith Stanfield) decides to call it quits. To nurse her broken heart, Jenny gathers up her two best friends Erin (DeWanda Wise) and Blair (Brittany Snow) for one outrageous last adventure in New York City.", gen: "Romance")
        mv3.length = "1h 32m"
        mv3.year = "2019"
        mv3.rating = "R"
        mv3.cast = "Gina Rodriguez, Brittany Snow, DeWanda Wise, more"
        mv3.percentage = 82
        mv3.image = "SomeoneGreat.jpg"
        mv3.trailerURL = "https://www.youtube.com/watch?v=BBd9gcrj2Wk"
        movieRomance.append(mv3)
        allMovies.append(mv3)
        
        let mv4 = MovieOption(nam: "Always Be My Maybe", desc: "Childhood friends Sasha and Marcus have a falling out and don't speak for 15 years. But when Sasha, now a celebrity chef in Los Angeles, returns to her hometown of San Francisco to open a new restaurant, she runs into her old pal - a happily complacent musician still living at home and working for his dad. Though the two are reluctant to reconnect, they soon find the old sparks - and maybe some new ones - are there.", gen: "Romance")
        mv4.length = "1h 42m"
        mv4.year = "2019"
        mv4.rating = "PG-13"
        mv4.cast = "Ali Wong, Randall Park, James Saito, more"
        mv4.percentage = 89
        mv4.image = "AlwaysBeMy.jpg"
        mv4.trailerURL = "https://www.youtube.com/watch?v=iHBcWHY9lN4"
        movieRomance.append(mv4)
        allMovies.append(mv4)
        
    }
    
    func populateAction() {
        let mv1 = MovieOption(nam: "Point Blank", desc: "A ruthless crook, Walker (Lee Marvin), is betrayed by his partner, Mal Reese (John Vernon), who leaves him for dead on Alcatraz Island. Having survived, Walker returns years later to get revenge. He gets his first lead when a mysterious man (Keenan Wynn) tells him that Reese is now part of a vast criminal organization and dating Walker's wife's sister, Chris (Angie Dickinson). But after contacting Chris, Walker discovers that in truth she loathes Reese and is willing to help him get justice.", gen: "Action")
        mv1.length = "1h 26m"
        mv1.year = "2019"
        mv1.rating = "TV-MA"
        mv1.cast = "Frank Grillo, Anthony Mackie, Marcia Gay Harden, more"
        mv1.percentage = 38
        mv1.image = "PointBlank.jpeg"
        mv1.trailerURL = "https://www.youtube.com/watch?v=hIMJ0_S-x40"
        movieAction.insert(mv1, at:0)
        allMovies.append(mv1)
        
        let mv2 = MovieOption(nam: "Extraction", desc: "In an underworld of weapons dealers and traffickers, a young boy becomes the pawn in a war between notorious drug lords. Trapped by kidnappers inside one of the world's most impenetrable cities, his rescue beckons the unparalleled skill of a mercenary named Tyler Rake, but Rake is a broken man with nothing to lose, harboring a death wish that makes an already deadly mission near impossible.", gen: "Action")
        mv2.length = "1h 57m"
        mv2.year = "2020"
        mv2.rating = "R"
        mv2.cast = "Chris Hemsworth, Rudhraksh Jaiswal, Randeep Hooda, more"
        mv2.percentage = 66
        mv2.image = "Extraction.jpg"
        mv2.trailerURL = "https://www.youtube.com/watch?v=L6P3nI6VnlY"
        movieAction.append(mv2)
        allMovies.append(mv2)
        
        let mv3 = MovieOption(nam: "The Old Guard", desc: "Led by a warrior named Andy (Charlize Theron), a covert group of tight-knit mercenaries with a mysterious inability to die have fought to protect the mortal world for centuries. But when the team is recruited to take on an emergency mission and their extraordinary abilities are suddenly exposed, it's up to Andy and Nile (Kiki Layne), the newest soldier to join their ranks, to help the group eliminate the threat of those who seek to replicate and monetize their power by any means necessary.", gen: "Action")
        mv3.length = "2h 5m"
        mv3.year = "2020"
        mv3.rating = "R"
        mv3.cast = "Charlize Theron, Kiki Layne, Marwan Kenzari"
        mv3.percentage = 81
        mv3.image = "OldGuard.jpg"
        mv3.trailerURL = "https://www.youtube.com/watch?v=aK-X2d0lJ_s"
        movieAction.append(mv3)
        allMovies.append(mv3)
        
        let mv4 = MovieOption(nam: "End of Watch", desc: "Longtime LAPD partners and friends, Brian Taylor (Jake Gyllenhaal) and Mike Zavala (Michael Peña) patrol one of the most dangerous neighborhoods in Los Angeles. Though they may bend the rules, their honor and dedication to the job are unquestioned. Taylor and Zavala always have each other's back, even if Taylor's surreptitious filming of their daily activities for a college course is a bit ill-advised. All hell breaks loose for the officers when they run afoul of a vicious Mexican cartel.", gen: "Action")
        mv4.length = "1h 48m"
        mv4.year = "2012"
        mv4.rating = "R"
        mv4.cast = "Jake Gyllenhaal, Michael Pena, Natalie Martinez, more"
        mv4.percentage = 85
        mv4.image = "EndOfWatch.jpg"
        mv4.trailerURL = "https://www.youtube.com/watch?v=9mQYxib26FM"
        movieAction.append(mv4)
        allMovies.append(mv4)
    }
    
    func setPercentageColor(val: Int) {
        if(val >= 80) {
            lblPercentage.backgroundColor = UIColor.green
        }
        else if(val >= 50 && val < 80) {
            lblPercentage.backgroundColor = UIColor.yellow
        }
        else if(val > 0 && val < 50) {
            lblPercentage.backgroundColor = UIColor.red
        }
        else {
            lblPercentage.backgroundColor = UIColor.gray
        }
    }
    
    func showMeMovies() {
        if(global.selectedOption == "Comedy"){
            populateComedy()
            let randomCom = movieComedy.randomElement()
            lblTitle.text = randomCom!.name
            lblDescription.text = randomCom!.description
            lblGenre.text = randomCom!.genre
            lblLength.text = randomCom!.length
            lblYear.text = randomCom!.year
            lblRating.text = randomCom!.rating
            lblCast.text = randomCom!.cast
            lblPercentage.text = "\(randomCom!.percentage)%"
            setPercentageColor(val: randomCom!.percentage)
            let img = UIImage(named:randomCom!.image)
            imgMovie.image = img
            siteSelected = randomCom!.trailerURL
            
            let fav = UserDefaults.standard.string(forKey: "liked")
            if(randomCom!.name == fav){
                likeBtn.tag = 1
            }
            else {
                likeBtn.tag = 0
            }
        }
        else if(global.selectedOption == "Horror"){
            populateHorror()
            let randomHor = movieHorror.randomElement()
            lblTitle.text = randomHor!.name
            lblDescription.text = randomHor!.description
            lblGenre.text = randomHor!.genre
            lblLength.text = randomHor!.length
            lblYear.text = randomHor!.year
            lblRating.text = randomHor!.rating
            lblCast.text = randomHor!.cast
            lblPercentage.text = "\(randomHor!.percentage)%"
            setPercentageColor(val: randomHor!.percentage)
            let img = UIImage(named:randomHor!.image)
            imgMovie.image = img
            siteSelected = randomHor!.trailerURL
            
            let fav = UserDefaults.standard.string(forKey: "liked")
            if(lblTitle.text == fav){
                likeBtn.tag = 1
            }
            else {
                likeBtn.tag = 0
            }
        }
        else if(global.selectedOption == "Romance"){
            populateRomance()
            let randomRom = movieRomance.randomElement()
            lblTitle.text = randomRom!.name
            lblDescription.text = randomRom!.description
            lblGenre.text = randomRom!.genre
            lblLength.text = randomRom!.length
            lblYear.text = randomRom!.year
            lblRating.text = randomRom!.rating
            lblCast.text = randomRom!.cast
            lblPercentage.text = "\(randomRom!.percentage)%"
            setPercentageColor(val: randomRom!.percentage)
            let img = UIImage(named:randomRom!.image)
            imgMovie.image = img
            siteSelected = randomRom!.trailerURL
            
            let fav1 = UserDefaults.standard.string(forKey: "liked")
            if(lblTitle.text == fav1){
                likeBtn.tag = 1
            }
            else {
                likeBtn.tag = 0
            }
        }
        else if(global.selectedOption == "Action"){
            populateAction()
            let randomAct = movieAction.randomElement()
            lblDescription.text = randomAct!.description
            lblTitle.text = randomAct!.name
            lblGenre.text = randomAct!.genre
            lblLength.text = randomAct!.length
            lblYear.text = randomAct!.year
            lblRating.text = randomAct!.rating
            lblCast.text = randomAct!.cast
            lblPercentage.text = "\(randomAct!.percentage)%"
            setPercentageColor(val: randomAct!.percentage)
            let img = UIImage(named:randomAct!.image)
            imgMovie.image = img
            siteSelected = randomAct!.trailerURL
            
            let fav2 = UserDefaults.standard.string(forKey: "liked")
            if(lblTitle.text == fav2){
                likeBtn.tag = 1
            }
            else {
                likeBtn.tag = 0
            }
        }
        else {
            populateAction()
            populateHorror()
            populateComedy()
            populateRomance()
            let randomMov = allMovies.randomElement()
            lblDescription.text = randomMov!.description
            lblTitle.text = randomMov!.name
            lblGenre.text = randomMov!.genre
            lblLength.text = randomMov!.length
            lblYear.text = randomMov!.year
            lblRating.text = randomMov!.rating
            lblCast.text = randomMov!.cast
            lblPercentage.text = "\(randomMov!.percentage)%"
            setPercentageColor(val: randomMov!.percentage)
            let img = UIImage(named:randomMov!.image)
            imgMovie.image = img
            siteSelected = randomMov!.trailerURL
            
            let fav3 = UserDefaults.standard.string(forKey: "liked")
            if(lblTitle.text == fav3){
                likeBtn.tag = 1
            }
            else {
                likeBtn.tag = 0
            }
        }
        movieReelSound.play()
    }
    
    @IBAction func btnShowNxt(_ sender: Any) {
        showMeMovies()
    }
    
    @IBAction func btnViewTrailer(_ sender: Any) {
        let app = UIApplication.shared
        let trailerURL = URL(string:siteSelected)
        app.open(trailerURL!)
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        imgMovie.alpha = 0
        lblTitle.alpha = 0
        lblLength.alpha = 0
        lblYear.alpha = 0
        lblRating.alpha = 0
        lblDescription.alpha = 0
        lblCast.alpha = 0
        lblGenre.alpha = 0
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration:2.0, animations: {
            self.imgMovie.alpha = 1
            self.lblTitle.alpha = 1
            self.lblLength.alpha = 1
            self.lblYear.alpha = 1
            self.lblRating.alpha = 1
            self.lblDescription.alpha = 1
            self.lblCast.alpha = 1
            self.lblGenre.alpha = 1
        })
        showMeMovies()
    }
    
    @IBAction func likeBtnClicked(_ sender: Any) {
        if(likeBtn.tag == 0){
            likeBtn.setImage(UIImage(named: "filled_heart"), for: .normal)
            UserDefaults.standard.set(lblTitle.text, forKey:"liked")
            likeBtn.tag = 1
        }
        else {
            likeBtn.setImage(UIImage(named: "empty_heart"), for: .normal)
            likeBtn.tag = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieReelSound = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath:Bundle.main.path(forResource:"TrimmedMovieReel", ofType: "wav")!))
        showMeMovies()
    }
    
}
