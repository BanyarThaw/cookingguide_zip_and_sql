-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 04:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookingguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `salt`, `created_at`, `updated_at`) VALUES
(1, 'Test update 4th time', 'test@cookingguide.xyz', 'd463d27a5281349b53e08ff288672633650ca82d', 'ded462cf1e689bf344974fc71ad9f6ca51e18525', '0000-00-00 00:00:00', '2022-06-02 02:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `respective_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `category`, `respective_id`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@tes.com', 'Testing', 'vegetables', 30, '2022-06-05 11:16:50', '2022-06-05 11:16:50'),
(2, 'Test2', 'test2@test2.com', 'this is test2', 'vegetables', 30, '2022-06-05 11:27:38', '2022-06-05 11:27:38'),
(3, 'Banyar Thaw', 'banyarthaw@gmail.com', 'this is testing.', 'vegetables', 30, '2022-06-05 11:29:00', '2022-06-05 11:29:00'),
(4, 'Test 3', 'test3@test3.com', 'test3', 'vegetables', 30, '2022-06-05 11:30:59', '2022-06-05 11:30:59'),
(5, 'Banyar Thaw', 'banyarthaw@gmail.com', 'this is testing.', 'vegetables', 33, '2022-06-05 11:32:28', '2022-06-05 11:32:28'),
(6, 'Dr.Thaw', 'drthaw@gmail.com', 'this is testing.', 'vegetables', 32, '2022-06-05 11:42:33', '2022-06-05 11:42:33'),
(7, 'Banyar Thaw', 'banyarthaw@gmail.com', 'this is testing', 'seafood', 7, '2022-06-07 10:59:01', '2022-06-07 10:59:01'),
(8, 'Banyar Thaw', 'banarythaw@gmail.com', 'this is testing 2', 'seafood', 7, '2022-06-07 16:22:19', '2022-06-07 16:22:19'),
(9, 'Banyar Thaw', 'banarythaw@gmail.com', 'this is testing comment.', 'meat', 9, '2022-06-07 20:08:57', '2022-06-07 20:08:57'),
(10, 'Banyar Thaw', 'banarythaw@gmail.com', 'this is testing comment.', 'soup', 9, '2022-06-07 20:20:01', '2022-06-07 20:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `meat`
--

CREATE TABLE `meat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `about` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meat`
--

INSERT INTO `meat` (`id`, `name`, `ingredients`, `about`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Roast chicken', 'Ingredients : lemon,small bunch fresh thyme,1 x 1.5kg/3lb 5oz ready-to-cook chicken, preferably organic,2–3 garlic cloves,1 tbsp olive oil,sea salt and freshly ground back pepper, to taste\r\n', 'Method\r\n1.	Preheat the oven to 200C/180C Fan/Gas 6.\r\n2.	Slice the lemon halfway through lengthways. Insert a sprig of thyme into the slit and place the lemon inside the cavity of the chicken.\r\n3.	Strip the leaves from the remaining thyme stalks and place them in a bowl. Press the garlic cloves with the heel of your hand to lightly crush them. Remove the skins and add the garlic to the bowl.\r\n4.	Pour the olive oil into the bowl. Using a pestle and mortar, a mini food processor or a hand blender, blend together the thyme leaves, garlic and olive oil. It should be quite liquid.\r\n5.	Spoon the thyme, garlic and oil mixture all over the chicken, working it into all the nooks and crannies.\r\n6.	Place the chicken in a roasting tray and pour over the remaining flavoured oil. Season the chicken generously with sea salt and black pepper.\r\n7.	Cover the chicken loosely with foil and roast for 30 minutes. Remove the foil and roast for another 30 minutes. Reduce the temperature to 180C/160C Fan/Gas 4 and roast for a further 25 minutes, or until the chicken is cooked through. It\'s fully cooked if the juices run clear when the bird is pierced in the thigh with a skewer.\r\n8.	Turn off the oven and let the bird rest in the residual heat for at least 10 minutes. Remove from the oven, then carve.\r\n9.	Stir the pan juices over the hob to heat through.\r\n10.	Serve the carved chicken on a large platter and pour the pan juices over the top.\r\n', '282042515_488853656369250_9018656035396035246_n.jpg', '2022-06-07 11:36:01', '2022-06-07 11:36:01'),
(5, 'Beef Stew with Carrots & Potatoes', 'INGREDIENTS : 3 pounds boneless beef chuck (well-marbled), cut into 1½-inch pieces,2 teaspoons salt,1 teaspoon freshly ground black pepper,3 tablespoons olive oil,2 medium yellow onions, cut into 1-inch chunks,7 cloves garlic, peeled and smashed,2 tablespoons balsamic vinegar,1½ tablespoons tomato paste,¼ cup all-purpose flour,2 cups dry red wine,2 cups beef broth,2 cups water,1 bay leaf,½ teaspoon dried thyme,1½ teaspoons sugar,4 large carrots, peeled and cut into 1-inch chunks on a diagonal,1 pound small white boiling potatoes (baby yukons), cut in half,Fresh chopped parsley, for serving (optional)\r\n', 'INSTRUCTIONS\r\n•	Preheat the oven to 325°F and set a rack in the lower middle position.\r\n•	Pat the beef dry and season with the salt and pepper. In a large Dutch oven or heavy soup pot, heat 1 tablespoon of the olive oil over medium-high heat until hot and shimmering. Brown the meat in 3 batches, turning with tongs, for about 5 minutes per batch; add one tablespoon more oil for each batch. (To sear the meat properly, do not crowd the pan and let the meat develop a nice brown crust before turning with tongs.) Transfer the meat to a large plate and set aside.\r\n•	Add the onions, garlic and balsamic vinegar; cook,\r\n•	stirring with a wooden spoon and scraping the brown bits from bottom of the pan, for about 5 minutes. Add the tomato paste and cook for a minute more. Add the beef with its juices back to the pan and sprinkle with the flour. Stir with wooden spoon until the flour is dissolved, 1 to 2 minutes. Add the wine, beef broth, water, bay leaf, thyme, and sugar. Stir with a wooden spoon to loosen any brown bits from the bottom of the pan and bring to a boil. Cover the pot with a lid, transfer to the preheated oven, and braise for 2 hours.\r\n•	Remove the pot from the oven and add the carrots and potatoes. Cover and place back in oven for about an hour more, or until the vegetables are cooked, the broth is thickened, and the meat is tender. Fish out the bay leaf and discard, then taste and adjust seasoning, if necessary. Serve the stew warm -- or let it come to room temperature and then store in the refrigerator overnight or until ready to serve. This stew improves in flavor if made at least 1 day ahead. Reheat, covered, over medium heat or in a 350°F oven. Garnish with fresh parsley, if desired.\r\n', '285092922_562283212164775_4269232852474293405_n.jpg', '2022-06-07 11:39:59', '2022-06-07 11:39:59'),
(6, 'Indian Chicken Curry', 'Ingredients : 2 pounds skinless, boneless chicken breast halves,2 teaspoons salt,½ cup cooking oil,1 ½ cups chopped onion,1 tablespoon minced garlic,1 ½ teaspoons minced fresh ginger root,1 tablespoon curry powder,1 teaspoon ground cumin,1 teaspoon ground turmeric,1 teaspoon ground coriander,1 teaspoon cayenne pepper,1 tablespoon water,1 (15 ounce) can crushed tomatoes,1 cup plain yogurt,1 tablespoon chopped fresh cilantro,1 teaspoon salt,½ cup water,1 teaspoon garam masala,1 tablespoon chopped fresh cilantro, 1 tablespoon fresh lemon juice\r\n', 'Directions\r\n•	 Step 1\r\nSprinkle the chicken breasts with 2 teaspoons salt.\r\n•	 Step 2\r\nHeat oil in a large skillet over high heat; partially cook the chicken in the hot oil in batches until completely browned on all sides. Transfer browned chicken breasts to a plate and set aside.\r\n•	 Step 3\r\nReduce the heat to medium and add onion, garlic, and ginger to the oil remaining in the skillet. Cook and stir until onion turns soft and translucent, 5 to 8 minutes. Stir curry powder, cumin, turmeric, coriander, cayenne, and 1 tablespoon of water into the onion mixture; allow to heat together for about 1 minute while stirring. Add tomatoes, yogurt, 1 tablespoon chopped cilantro, and 1 teaspoon salt to the mixture; stir to combine.\r\n•	 Step 4\r\nReturn chicken breast to the skillet along with any juices on the plate. Pour in 1/2 cup water and bring to a boil, turning the chicken to coat with the sauce. Sprinkle garam masala and 1 tablespoon cilantro over the chicken.\r\n•	 Step 5\r\nCover the skillet and simmer until chicken breasts are no longer pink in the center and the juices run clear, about 20 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C). Drizzle with lemon juice to serve.\r\n', '253998956_600678427747993_2835122577843620773_n.jpg', '2022-06-07 11:43:20', '2022-06-07 11:43:20'),
(7, 'Garlic-Butter Steak', 'Ingredients : 2 tablespoons butter, softened, divided,1 teaspoon minced fresh parsley,1/2 teaspoon minced garlic,1/4 teaspoon reduced-sodium soy sauce,1 beef flat iron steak or boneless top sirloin steak (3/4 pound),1/8 teaspoon salt,1/8 teaspoon pepper\r\n', 'Directions\r\n1.	Mix 1 tablespoon butter with parsley, garlic and soy sauce.\r\n2.	Sprinkle steak with salt and pepper. In a large skillet, heat remaining butter over medium heat. Add steak; cook until meat reaches desired doneness (for medium-rare, a thermometer should read 135°; medium, 140°; medium-well, 145°), 4-7 minutes per side. Serve with garlic butter.\r\n', '283936843_433106934990327_6303144239352467594_n.jpg', '2022-06-07 11:44:50', '2022-06-07 11:44:50'),
(8, 'Spicy Pork Curry', 'Ingredients : 1 cup water,1 tablespoon dried minced onion,1 cube chicken bouillon,½ teaspoon garlic powder,¼ teaspoon dried rosemary,¼ teaspoon dried thyme,¼ teaspoon salt,3 tablespoons coconut oil,2 tablespoons curry powder,½ teaspoon ground red pepper (cayenne), or more to taste,1 pound pork tenderloin, cut into strips,2 ½ tablespoons all-purpose flour,1 cup coconut milk, ¼ cup natural peanut butter\r\n', 'Directions\r\n•	 Step 1\r\nPreheat oven to 350 degrees F (175 degrees C).\r\n•	 Step 2\r\nHeat water, dried onion, chicken bouillon, garlic powder, rosemary, thyme, and salt in a microwave-safe bowl for 1 minute in the microwave; let stand until onion is rehydrated and bouillon is dissolved.\r\n•	 Step 3\r\nHeat coconut oil, curry powder, and ground red pepper in a large oven-proof skillet over medium heat, stirring constantly, until oil takes on the color of the curry powder, 5 to 6 minutes.\r\n•	 Step 4\r\nCook and stir pork tenderloin slices in coconut oil mixture until pork begins to brown. Sprinkle flour over pork; cook and stir until slices cook through; 2 to 3 minutes more.\r\n•	 Step 5\r\nStir bouillon mixture, coconut milk, and peanut butter into pork mixture; bring to a boil, stirring constantly. Cover skillet with an oven-proof lid and transfer to oven.\r\n•	 Step 6\r\nCook pork in the preheated oven until tender and sauce is bubbling, about 45 minutes. Remove from oven, remove lid, and rest pork for 10 minutes to allow sauce to thicken.\r\n', '285317551_422983876299877_4157767883934372839_n.jpg', '2022-06-07 11:47:28', '2022-06-07 11:47:28'),
(9, 'Burmese pork curry', 'Ingredients : 1kg pork leg, or shoulder, with some fat, diced into 2.5cm cubes,100ml of malt vinegar,4 medium onions, sliced into wedges,1 knob of fresh ginger, 2cm long, peeled,4 tbsp of groundnut oil, or another neutral-tasting oil,1 tbsp of sugar,1 tbsp of light soy sauce,1 tbsp of dark soy sauce,1 tsp freshly ground black pepper\r\n', 'Method\r\n\r\nToss the pork thoroughly in the vinegar, then discard the vinegar (this imparts a slight sourness and is traditionally thought to clean the pork). Place the pork in a large saucepan and add enough water to just submerge. Cover the pan with a lid and bring to the boil over a high heat. Turn the heat down to medium-low and continue to simmer, with the lid on, for 15 minutes\r\n2\r\nRemove the pork and set aside, reserving the cooking liquor in a bowl. Do not wash the saucepan – you\'ll reuse it later\r\n3\r\nPound the ginger into a rough pulp using a pestle and mortar, then add 2 tablespoons of water to make a ginger juice, then strain through a sieve, squeezing as much liquid out of the pulp as possible. Discard the pulp and reserve the liquid\r\n4\r\nHeat the oil in the same saucepan used to boil the pork over a medium-high heat. Add the diced pork and fry for 4–5 minutes until browned all over. Add the onion wedges and ginger juice, then stir-fry for 1 minute. Add the reserved pork cooking liquor, sugar, soy sauces and pepper along with 500ml of water and bring to the boil\r\nTurn down the heat to medium-low and simmer for 1 1/2 hours until the sauce is sticky and reduced\r\n6\r\nWhen the time is up, the pork should be tender and fall apart if you poke it with a fork. Serve with lots of fluffy white rice and stir-fried greens on the side\r\n', '283280197_534352694997700_4403724692128065302_n.jpg', '2022-06-07 11:49:13', '2022-06-07 11:49:13'),
(10, 'Goat curry', 'Ingredients : 6 whole cloves,2 black cardamom pods,4 green cardamom pods,few black peppercorns,2 tbsp ghee,1 bay leaf,1 cinnamon stick,1 large onion, finely chopped,1 large red onion, finely chopped,3 small green chillies, finely sliced,4 garlic cloves, roughly chopped,5cm/2in piece fresh root ginger, peeled and roughly chopped,1.5kg/3lb 5oz goat meat (a mixture of boneless cuts and on-the-bone leg cuts), cut into bite-sized pieces,1 tbsp salt,1 tbsp turmeric,2–3 tsp mild chilli powder,2 tbsp garam masala,4 tomatoes, roughly chopped,chopped fresh coriander, to serve\r\n', 'Method\r\n1.	Pound the cloves, black and green cardamom pods and peppercorns into a pestle and mortar until lightly crushed.\r\n2.	Heat a large frying pan over a medium heat then add the ghee. Once melted, add the crushed spices along with the bay leaf and cinnamon stick. Fry for 1–2 minutes to allow the flavours to infuse, then add the onions. Increase the heat and fry for around 5–10 minutes, stirring frequently until the onions start to brown and caramelise.\r\n3.	Add the chilli, garlic and ginger and continue to fry gently for a further 10 minutes, on a low heat, covering with a lid and making sure you stir again frequently until the onions are golden, soft and caramelised.\r\n4.	Add the goat meat to the pan. Allow to brown for around 10 minutes, stirring and coating the meat. Stir in the salt, turmeric, chilli powder and garam masala, mixing well to evenly coat the meat. Add the chopped tomatoes and continue to cook for around 10–15 minutes, continuing to stir until the ingredients have blended well and the oil has separated from the tomatoes. Pour in enough hot water from the kettle to just cover the meat (approximately 800ml–1litre/1½–1¾ pints). Bring to the boil, then reduce the heat to a low simmer, cover with a lid and cook gently for 2½–3 hours, stirring frequently until the goat is tender and the sauce has reduced. Top up with water throughout cooking if necessary and remove the lid for the last 10–15 minutes of cooking to allow the sauce to reduce and thicken.\r\n5.	Transfer to serving dishes and serve sprinkled with the coriander.\r\n', '281839305_350485683781736_6728389305773415628_n.jpg', '2022-06-07 11:51:58', '2022-06-07 11:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `respective_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `email`, `points`, `category`, `respective_id`, `created_at`, `updated_at`) VALUES
(1, 'test@test.com', 1, 'vegetables', 31, '2022-06-05 14:03:47', '2022-06-05 14:03:47'),
(2, 'test@test2.com', 5, 'vegetables', 31, '2022-06-05 14:09:03', '2022-06-05 14:09:03'),
(3, 'BaSai@gmail.com', 5, 'vegetables', 31, '2022-06-05 14:19:50', '2022-06-05 14:19:50'),
(4, 'test@test.com', 1, 'vegetables', 34, '2022-06-05 14:20:12', '2022-06-05 14:20:12'),
(5, 'thaw@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:41:47', '2022-06-05 15:41:47'),
(6, 'thaw@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:41:56', '2022-06-05 15:41:56'),
(7, 'thaw@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:42:18', '2022-06-05 15:42:18'),
(8, 'thaw2@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:52:55', '2022-06-05 15:52:55'),
(9, 'thaw2@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:53:05', '2022-06-05 15:53:05'),
(10, 'thaw2@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:53:13', '2022-06-05 15:53:13'),
(11, 'thaw@gmail.com', 1, 'vegetables', 34, '2022-06-05 15:53:51', '2022-06-05 15:53:51'),
(12, 'thaw@gmail.com', 1, 'vegetables', 34, '2022-06-05 16:02:02', '2022-06-05 16:02:02'),
(13, 'thaw3@gmai.com', 1, 'vegetables', 0, '2022-06-05 16:05:12', '2022-06-05 16:05:12'),
(14, 'thaw10@gmail.com', 1, 'vegetables', 34, '2022-06-05 16:07:13', '2022-06-05 16:07:13'),
(15, 'drthaw@gmail.com', 5, 'vegetables', 32, '2022-06-05 17:13:15', '2022-06-05 17:13:15'),
(16, 'drthaw2@gmail.com', 1, 'vegetables', 32, '2022-06-05 17:15:09', '2022-06-05 17:15:09'),
(17, 'drthaw3@gmail.com', 1, 'vegetables', 32, '2022-06-05 17:15:28', '2022-06-05 17:15:28'),
(18, 'basai@gmail.com', 4, 'vegetables', 30, '2022-06-06 16:00:57', '2022-06-06 16:00:57'),
(19, 'drthaw@gmail.com', 1, 'seafood', 5, '2022-06-07 10:58:30', '2022-06-07 10:58:30'),
(20, 'thaw@gmailcom', 1, 'seafood', 7, '2022-06-07 16:18:20', '2022-06-07 16:18:20'),
(21, 'banarythaw@gmail.com', 1, 'meat', 9, '2022-06-07 20:09:06', '2022-06-07 20:09:06'),
(22, 'banarythaw@gmail.com', 1, 'soup', 9, '2022-06-07 20:19:36', '2022-06-07 20:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `seafood`
--

CREATE TABLE `seafood` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `about` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seafood`
--

INSERT INTO `seafood` (`id`, `name`, `ingredients`, `about`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'Seafood Boil Receipe', '3 lemons divided use,1/2 cup Old Bay seasoning plus more for garnish,8 cloves garlic smashed,1 onion peeled and cut into 6 pieces,1 pound small Yukon gold potatoes halved,4 ears corn on the cob cut into 3-4 inch pieces,3 lobster tails,1 pound clams scrubbed,1 pound crab legs pre-cooked,1 pound smoked sausage cut into 1 inch pieces, kielbasa or andouille are preferred,1 pound shrimp peeled and deveined (leave tails on),3 tablespoons butter,2 tablespoons chopped parsley\r\n', 'INSTRUCTIONS\r\n1.	Cut 2 of the lemons into quarters. Slice the remaining lemon into wedges and reserve the wedges for garnish.\r\n2.	Fill a large pot with 14-16 cups of water. Place the 2 quartered lemons in the water along with the Old Bay seasoning, garlic and onion. Bring to a boil.\r\n3.	Add the potatoes to the pot and cook for 8 minutes.\r\n4.	Add the lobster tails and cook for 5 minutes.\r\n5.	Add the clams, crab, and corn, and cook for 5 minutes.	\r\n6.	Add the shrimp and sausage and cook for 2-3 minutes.\r\n7.	Drain the seafood mixture from the pot, reserving 1 cup of the broth.\r\n8.	Melt the butter in a small bowl and whisk it into the reserved broth. Pour the broth over the seafood mixture.\r\n9.	Garnish with chopped parsley and lemon wedges. Sprinkle with additional Old Bay seasoning to taste, then serve immediately.\r\n', '279863226_742155166795126_229099748754080904_n-_1_.jpg', '2022-06-06 22:58:02', '2022-06-06 22:58:02'),
(4, 'Fish in Foil', '2 rainbow trout fillets,1 tablespoon olive oil,2 teaspoons garlic salt,1 teaspoon ground black pepper,2 sheets heavy-duty aluminum foil,1 fresh jalapeno pepper, sliced,1 lemon, sliced\r\n', 'Directions\r\n•	 Step 1\r\nPreheat the oven to 400 degrees F (200 degrees C).\r\n•	 Step 2\r\nRinse and pat fillets dry. Rub fillets with olive oil, and season with garlic salt and black pepper. Place each fillet on a large sheet of aluminum foil. Top with jalapeno slices, and squeeze the juice from the ends of the lemon over fillets. Arrange remaining lemon slices on top of fillets.\r\n•	 Step 3\r\nCarefully seal all edges of the foil to form enclosed packets. Place packets on a baking sheet.\r\n•	 Step 4\r\nBake in the preheated oven until fish flakes easily with a fork, 15 to 20 minutes depending on size of fillets.\r\n', '280198281_3245522865768984_263955039802696009_n.jpg', '2022-06-06 23:00:03', '2022-06-06 23:00:03'),
(5, 'Simple Garlic Shrimp', 'Ingredients: 1 ½ tablespoons olive oil,1 pound shrimp, peeled and deveined,salt to taste,6 cloves garlic, finely minced, ¼ teaspoon red pepper flakes,3 tablespoons lemon juice,1 tablespoon caper brine,2 tablespoons cold butter, cut into 4 equal pieces, divided, ⅓ cup chopped flat-leaf parsley, divided,1 teaspoon water, or as needed\r\n', 'Directions\r\n•	 Step 1\r\n•	Heat olive oil in a heavy skillet over high heat until it just begins to smoke. Place shrimp in an even layer on the bottom of the pan and cook for 1 minute without stirring.\r\n•	 Step 2\r\nSeason shrimp with salt; cook and stir until shrimp begin to turn pink, about 1 minute.\r\n•	 Step 3\r\nStir in garlic and red pepper flakes; cook and stir 1 minute.\r\n•	 Step 4\r\nStir in lemon juice, caper brine, 1 piece butter, and 1/2 of the parsley. Cook until butter has melted, about 1 minute.\r\n•	 Step 5\r\nReduce heat to low and stir in remaining 3 pieces butter. Cook and stir until butter has melted, sauce is thick, and shrimp are pink and opaque, 2 to 3 minutes.\r\n•	 Step 6\r\nRemove shrimp with a slotted spoon and transfer to a bowl; continue to cook butter sauce, adding water 1 teaspoon at a time if too thick, about 2 minutes. Season with salt.\r\n•	 Step 7\r\nServe shrimp topped with the pan sauce and remaining parsley.\r\n', '281181029_1894766117394337_7141542870942278233_n.jpg', '2022-06-07 10:29:05', '2022-06-07 10:29:05'),
(6, 'Butter & Garlic Fried Prawns', 'Ingredients : 25 - 30 shrimps large prawns,3 - 4 kashmiri dry chilies or chilli flakes,20 cloves garlic,20 gm butter,3 tablespoons olive oil,to taste salt,1-2 sprigs coriander leaves cilantro,1 lime sliced to wedges\r\n', 'Instructions\r\n1.	De-vein the prawns and peel the shells off.\r\n2.	Chop the garlic and keep it aside. Crush the chilies to flakes.\r\n3.	In a thick-bottomed pan, melt butter and add 2 tablespoons of olive oil.\r\n4.	Once the oil is hot, fry the garlic and chili flakes.\r\n5.	Wait for the garlic to turn golden brown, place the prawns on the pan, and give the pan a quick shake.\r\n6.	If required sprinkle some salt.\r\n7.	Fry the prawns for less than 3 minutes on each side, and switch off the flame. For bigger prawns cooking time could increase.\r\n8.	Take the fried prawns and place them in a bowl.\r\n9.	Add a tablespoon olive oil to the left over mixture in the pan, and mix well.\r\n10.	Drizzle this mixture on top of the fried prawns.\r\n11.	Squeeze a lime wedge or two to add a tangy note. Serve fresh and hot.\r\n12.	Eat with some bread to soak up the amazing sauce\r\n', '282870588_3120507561542771_7638364811253097441_n.jpg', '2022-06-07 10:32:22', '2022-06-07 10:32:22'),
(7, 'Chilli & lime squid salad', 'Ingredients: 3 red chillies , halved, deseeded and finely diced,2 tbsp garlic-infused olive oil , plus extra to serve,2 whole squid tubes about 400g/14oz, cleaned and prepared (see tip),2 large ripe avocados , stoned, peeled and sliced,100g rocket,3 limes , halved,3 tbsp crispy onions (I used Fresh Gourmet crispy onions\r\n', '•	STEP 1\r\nMix two-thirds of the chillies and the garlic-infused oil in a large bowl and add the squid. Cover with cling film and leave them to marinate for at least 1 hr or overnight in the fridge.\r\n•	STEP 2\r\nJust before serving, heat the barbecue or a griddle pan. Combine the avocado slices with the rocket. Divide between 6 small plates or bowls.\r\n•	STEP 3\r\nWhen the barbecue is hot or your griddle pan almost smoking, add the limes, cut-side down. Tip on the squid, pressing lightly with the back of a fish slice to create charred lines. When the squid feels slightly firm, about 1 min 30 secs into cooking, turn over and press down with the fish slice again, cooking for another 1 min 30 secs or until the squid feels firm. Remove and place on a board.\r\n•	STEP 4\r\nSlice the squid into 1-2cm rings and top each salad with a few rings and some crispy onions. Serve half a charred lime on the side for squeezing over, with the remaining chilli scattered over and a drizzle of garlic oil.\r\n', '284847840_1060651361198877_8591287694284589160_n.jpg', '2022-06-07 10:34:53', '2022-06-07 10:34:53'),
(8, 'Crab Masala Fry Recipe', 'Ingredients\r\n•	3 tablespoons vegetable oil, divided\r\n•	1 medium onion, finely chopped (about 1 cup), divided\r\n•	1 tablespoon coriander seeds\r\n•	1/2 tablespoon cumin seeds\r\n•	1 whole small dried red chile, such as Thai bird or chile de árbol\r\n•	5 whole black peppercorns,2 whole cloves,1-inch piece of ginger, minced (about 1 tablespoon),3 medium cloves garlic, minced (about 1 tablespoon),1 teaspoon fennel seeds,1 cup tomato purée ,1 teaspoon turmeric powder,2 medium Dungeness or Jonah crabs, cleaned and cut into half,Kosher salt,2 tablespoons finely chopped fresh cilantro leaves,Cooked rice or flatbread for serving\r\n', 'Directions	\r\n1.	Heat 1 tablespoon oil in a heavy-bottomed saucepan over low heat until shimmering. Add 1 tablespoon chopped onion, coriander seeds, cumin seeds, dried chili, peppercorns, cloves, ginger, and garlic. Cook, stirring frequently, until fragrant, about 5 minutes. Turn off the heat and add fennel seeds. Stir to mix through. Immediately transfer to the bowl of a blender or mortar and pestle and blend/pound until a fine paste is formed, scraping down sides as necessary.\r\n2.	Wipe out saucepan with a paper towel and add remaining oil. Heat over medium heat until shimmering. Add the remaining onion. Cook, stirring, unti lightly browned, about 6 minutes. Add the tomato puree, bring to a simmer, and simmer for 5 minutes. Add turmeric powder and the ground spice paste. Stir well to combine and continue to cook, stirring occasionally, until the oil separates and starts surfacing. Add a few drops of water if the paste tends to stick or get too dry.\r\n3.	Add the crab and salt. Spoon some of the sauce over the crab to coat. Cover and cook for 5 minute. Remove lid, stir, and continue to cook for 10 minutes, spooning the sauce over the crabs occasionally. Sprinkle with coriander leaves and serve immediately with rice or bread.\r\n', '281298550_508394894369207_3529901239263063464_n.jpg', '2022-06-07 10:40:26', '2022-06-07 10:40:26'),
(9, 'Salmon Roasted in Butter', 'INGREDIENTS : 4 tablespoons (1/2 stick) butter,4 tablespoons minced chervil, parsley or dill,1 salmon fillet, 1 1/2 to 2 pounds,Salt and freshly ground black pepper to taste,Lemon wedges\r\n', 'PREPARATION\r\n1.	Preheat the oven to 475 degrees. Place the butter and half the herb in a roasting pan just large enough to fit the salmon and place it in the oven. Heat about 5 minutes, until the butter melts and the herb begins to sizzle.\r\n2.	Add the salmon to the pan, skin side up. Roast 4 minutes. Remove from the oven, then peel the skin off. (If the skin does not lift right off, cook 2 minutes longer.) Sprinkle with salt and pepper and turn the fillet over. Sprinkle with salt and pepper again.\r\n3.	Roast 3 to 5 minutes more, depending on the thickness of the fillet and the degree of doneness you prefer. Cut into serving portions, spoon a little of the butter over each and garnish with the remaining herb. Serve with lemon wedges.\r\n', '279953690_1053888138549258_4955699011725933422_n.jpg', '2022-06-07 10:41:56', '2022-06-07 10:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `soup`
--

CREATE TABLE `soup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `about` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soup`
--

INSERT INTO `soup` (`id`, `name`, `ingredients`, `about`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'Weight-Loss Cabbage Soup', 'Ingredients:2 tablespoons extra-virgin olive oil,1 medium onion, chopped,2 medium carrots, chopped,2 stalks celery, chopped,1 medium red bell pepper, chopped,2 cloves garlic, minced,1 ½ teaspoons Italian seasoning,½ teaspoon ground pepper,¼ teaspoon salt,8 cups low-sodium vegetable broth,1 medium head green cabbage, halved and sliced,1 large tomato, chopped,2 teaspoons white-wine vinegar\r\n', 'Directions\r\nInstructions Checklist\r\n•	 Step 1\r\nHeat oil in a large pot over medium heat. Add onion, carrots and celery. Cook, stirring, until the vegetables begin to soften, 6 to 8 minutes. Add bell pepper, garlic, Italian seasoning, pepper and salt and cook, stirring, for 2 minutes.\r\n•	 Step 2\r\nAdd broth, cabbage and tomato; increase the heat to medium-high and bring to a boil. Reduce heat to maintain a simmer, partially cover and cook until all the vegetables are tender, 15 to 20 minutes more. Remove from heat and stir in vinegar.\r\n', '284215312_823731162369702_8706537414613919311_n.jpg', '2022-06-07 15:06:42', '2022-06-07 15:06:42'),
(4, 'Thai chicken soup', 'Ingredients: 2 skinless chicken breasts, thinly sliced,2 tbsp of rapeseed oil,1 tbsp of Thai green curry paste,15g of fresh ginger, chopped into small matchstick,350ml of light coconut milk,450ml of chicken stock,1 tbsp of fish sauce,100g of green beans,1 large carrot, cut into matchsticks,150g of egg noodles,25g of fresh coriander, chopped,6 spring onions, thinly sliced,1 red chilli, deseeded and thinly chopped,1 lime, cut into 4 wedges\r\n', 'Method\r\n \r\n\r\n\r\n1\r\nHeat the rapeseed oil in a pan. Once hot, add the Thai green curry paste. Cook gently for 1 minute, then add the chopped ginger\r\n•	1 tbsp of Thai green curry paste\r\n•	15g of fresh ginger, chopped into small matchsticks\r\n•	2 tbsp of rapeseed oil\r\n2\r\nGently pour in the coconut milk, chicken stock and fish sauce. Bring to the boil and then turn down the heat, simmer for a minute\r\n•	350ml of light coconut milk\r\n•	450ml of chicken stock\r\n•	1 tbsp of fish sauce\r\n3\r\nAdd the chicken, bring to the boil and then turn down the heat again and simmer for 10 minutes\r\n•	2 skinless chicken breasts, thinly sliced\r\n4\r\nAdd the green beans and carrots to the soup and simmer for a further 5 minutes\r\n•	100g of green beans\r\n•	1 large carrot, cut into matchsticks\r\n5\r\nMeanwhile, in a separate pan, pour enough boiling water over the dry noodles to cover. Bring to the boil and heat until the noodles are tender and cooked, approximately 2 minutes\r\n•	150g of egg noodles\r\n6\r\nAdd the coriander and spring onions to the soup\r\n•	25g of fresh coriander, chopped\r\n•	6 spring onions, thinly sliced\r\n7\r\nDrain the noodles and divide between 4 cups\r\n8\r\nCarefully pour the soup over the noodles. Sprinkle the chopped chilli on top and serve with wedges of lime\r\n•	1 red chilli, deseeded and thinly chopped\r\n•	1 lime, cut into 4 wedges\r\n', '283799617_698717341381698_4693084638042192995_n.jpg', '2022-06-07 15:09:10', '2022-06-07 15:09:10'),
(5, 'Pumpkin Soup', 'Ingredients : 6 cups chicken stock,4 cups pumpkin puree,1 cup chopped onion,1 clove garlic, minced,1 ½ teaspoons salt,½ teaspoon chopped fresh thyme,5 whole black peppercorns,½ cup heavy whipping cream,1 teaspoon chopped fresh parsley\r\n', 'Directions\r\n•	 Step 1\r\nPlace chicken stock, pumpkin puree, onion, garlic, salt, thyme, and peppercorns in a large pot; bring to a boil. Reduce heat to low and simmer, uncovered, 30 minutes.\r\n•	 Step 2\r\nTransfer soup to a blender or food processor in batches; blend until smooth.\r\n•	 Step 3\r\nReturn soup to the pan and bring to a boil; reduce heat to low and simmer, uncovered, for 30 minutes.\r\n•	 Step 4\r\nStir in heavy cream. Ladle soup into bowls and garnish with fresh parsley.\r\n', '283349838_414302793908386_6412619772361285616_n.jpg', '2022-06-07 15:12:21', '2022-06-07 15:12:21'),
(6, 'Instant Pot Vegetable Soup                      ', 'Ingredients\r\n•	Canola Oil: used to sauté the onion\r\n•	Vegetables: I use a blend of onion, carrot, celery, green beans, corn, spinach, and potatoes. Feel free to add in or leave out whatever veggies you want!\r\n•	Paste: adds richness and flavor depth.\r\n•	Garlic: use freshly minced garlic for the best flavor. \r\n•	Seasonings: Italian seasoning, salt, black pepper\r\n•	Broth: you can keep this soup vegetarian with vegetable broth or use chicken broth or chicken stock instead.\r\n•	Tomatoes: I use fire roasted diced tomatoes, but other flavors will work as well.\r\n•	Bay Leaf: this adds a subtle earthy flavor that heightens the other flavors in the soup.\r\n\r\n\r\n', '•	Directions\r\n1.	Hit SAUTE on the instant pot, add in oil and heat, then cook the onion until softened. Turn the instant pot off and add in tomato paste, garlic, and seasonings. Cook for 1 minute.\r\n2.	Mix in broth, then add potatoes, carrots, celery, tomatoes, green beans, corn, and bay leaf.\r\n3.	Cover with the lid then cook on Manual or Pressure Cook for 2 minutes. Once the cook time is up, naturally release for 8-10 minutes, then open the valve and remove the lid.\r\n4.	Stir in spinach then serve and enjoy!\r\n', '274294738_316734217188183_1891332992076803157_n.jpg', '2022-06-07 15:14:05', '2022-06-07 15:14:05'),
(7, 'PRESSURE COOKER VEGETABLE SOUP', 'INGREDIENTS\r\n \r\n•	1 cup 15 bean mix dry\r\n•	4 cups water\r\n•	½ Tbsp minors vegetable base\r\n•	1 cup onion diced\r\n•	14.5 ounces fire roasted tomatoes\r\n•	2 tsp sea salt\r\n•	½ tsp black pepper\r\n•	1 tsp basil dried leaves\r\n•	1 tsp thyme dried leaves\r\n•	1 tsp garlic powder\r\n•	1 tsp onion powder\r\n•	1 lb carrots sliced\r\n•	2 celery\r\n•	12 ounces corn frozen\r\n•	12 ounces peas frozen\r\n•	12 ounces green beans frozen\r\n', 'INSTRUCTIONS\r\n \r\n1.	Peel and slice carrots into ¼\" slices. Dice onion and celery to ½-1\" dice. Rinse the beans.\r\n2.	Combine all ingredients into the inner pot of the Ninja Foodi and stir. Put on the pressure lid and make sure the valve is to seal. Pressure cook on high for 30 minutes. \r\n3.	When the 30 minutes is up, allow to natural release for 3-6 minutes and then manually release the remaining pressure. \r\n4.	Serve and Enjoy! \r\n', '280303669_3059135591063464_1616292019570982070_n.jpg', '2022-06-07 15:16:02', '2022-06-07 15:16:02'),
(8, 'Instant Pot Chicken Soup', 'Ingredients\r\n•	1 (3- to 4-pound) chicken, or an equivalent mix of bone-in thighs, legs, or breast meat\r\n•	3 cloves garlic, smashed and peeled\r\n•	12 sprigs fresh flat leaf parsley\r\n•	3 large sprigs fresh thyme\r\n•	4 teaspoons salt\r\n•	2 quarts water\r\n•	4 ribs celery, sliced\r\n•	3 medium carrots, peeled and sliced\r\n•	1 medium parsnip, halved lengthwise and sliced\r\n•	1 medium yellow onion, diced\r\n•	Cooked egg noodles, optional\r\n', 'Method\r\n1.	Put the chicken in the pot of the pressure cooker, breast side up.\r\n\r\n2.	Add the garlic, herbs, water, and salt to the cooker:\r\nAdding four teaspoons of salt at this point will result in a well-seasoned soup broth. Use less salt or eliminate if you\'d like to make basic chicken broth to use for other purposes.\r\n3.	Cook the soup:\r\nPlace the lid on the pressure cooker. Make sure the pressure regulator is set to the “Sealing” position. Program the cooker to pressure cook 25 minutes at high pressure. (Instant Pot users can also select the \"Soup\" program and follow the same cooking time. For stovetop pressure cookers, cook at high pressure for 22 minutes.)\r\nIt will take about 35 minutes for your pressure cooker to come up to pressure, and then the actual cooking will begin. Total time from the time you seal the pressure cooker to the finished dish is about 1 hour.\r\n4.	Release the pressure:\r\nWhen the soup has finished cooking, wait about 15 minutes before \"quick\" releasing the pressure. This helps prevent a lot of steamy broth spitting out of the valve. Even so be careful when releasing the steam!\r\nYou can also let the pressure release naturally, though this will take quite a while. Wait until the pressure cooker’s float valve has returned to its \"down\" position before opening the pressure cooker.\r\n5.	Remove the chicken to cool, then cook the vegetables:\r\nUse a pair of tongs or a slotted spoon to remove the chicken from the pot, and transfer it to a dish to cool until you can comfortably handle it, about 20 minutes. It may come apart as you are removing it from the pot, so go slowly and carefully.\r\nAs the chicken cools, add the celery, carrots, parsnip, and onion to the hot broth in the pot. Place the lid on the pressure cooker. Make sure the pressure regulator is set to the “Sealing” position. Program the cooker to pressure cook 5 minutes at high pressure.\r\n6.	Prepare the chicken meat:\r\nAs the vegetables cook, take the meat off of the bones, and discard the bones, skin, and cartilage. Cut or tear the meat into bite-sized pieces.When the cooker beeps, either quick release the pressure (for firmer vegetables) or let the pressure release naturally (for more tender vegetables).\r\n\r\n7.	Stir the chicken meat back into the soup:\r\nRemove the herb sprigs. Ladle into bowls and serve. Add cooked egg noodles, if you like.\r\n\r\n', '284037367_527209535733256_4622575324955450446_n.jpg', '2022-06-07 15:17:56', '2022-06-07 15:17:56'),
(9, 'Mushroom & potato soup', 'Ingredients\r\n•	1 tbsp rapeseed oil\r\n•	2 large onions , halved and thinly sliced\r\n•	20g dried porcini mushrooms\r\n•	3 tsp vegetable bouillon powder\r\n•	300g chestnut mushrooms , chopped\r\n•	3 garlic cloves , finely grated\r\n•	300g potato , finely diced\r\n•	2 tsp fresh thyme\r\n•	4 carrots , finely diced\r\n•	2 tbsp chopped parsley\r\n•	8 tbsp bio yogurt\r\n•	55g walnut pieces\r\n', 'Method\r\n•	STEP 1\r\nHeat the oil in a large pan. Tip in the onions and fry for 10 mins until golden. Meanwhile, pour 1.2 litres boiling water over the dried mushrooms and stir in the bouillon.\r\n•	STEP 2\r\nAdd the fresh mushrooms and garlic to the pan with the potatoes, thyme and carrots, and continue to fry until the mushrooms soften and start to brown.\r\n•	STEP 3\r\nPour in the dried mushrooms and stock, cover the pan and leave to simmer for 20 mins. Stir in the parsley and plenty of pepper. Ladle into bowls and serve each portion topped with 2 tbsp yogurt and a quarter of the walnuts. The rest can be chilled and reheated the next day.\r\n', '280649178_568443454674624_3923507962385382845_n.jpg', '2022-06-07 15:19:14', '2022-06-07 15:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `vegetables`
--

CREATE TABLE `vegetables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `about` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vegetables`
--

INSERT INTO `vegetables` (`id`, `name`, `ingredients`, `about`, `photo`, `created_at`, `updated_at`) VALUES
(30, 'Watercress with Rice Wine-Oyster Sauce', 'Rice Wine-Oyster Sauce,1 tablespoon Shao Hsing rice wine (see Tip) or dry sherry,2 teaspoons oyster-flavored sauce or vegetarian oyster sauce, ¼ teaspoon sugar, ⅛ teaspoon salt,Watercress Stir-Fry,2 tablespoons canola oil,2 medium cloves garlic, smashed,24 cups watercress (14 ounces or about 6 bunches) or 16 cups spinach, tough stems trimmed,1 teaspoon sesame oil\r\n\r\n', 'Step 1\r\nTo prepare the sauce: Whisk rice wine, oyster sauce, sugar and salt in a small bowl.\r\nStep 2\r\nTo prepare the watercress: Heat a 14-inch flat-bottomed wok or large skillet over high heat until a bead of water vaporizes within 1 to 2 seconds of contact. Swirl canola oil into the pan, add garlic and stir-fry for 10 seconds. Add watercress and stir-fry until it just begins to wilt, about 1 minute. (The wok will become very full as the watercress is added; stir constantly to avoid scorching the greens.) Stir the Rice Wine-Oyster Sauce and swirl it into the pan; stir-fry until the watercress is just tender but still bright green, 1 to 2 minutes. Stir in sesame oil. Remove garlic. Serve immediately.\r\n', '281878003_571824584356670_465838812596829463_n.jpg', '2022-06-04 15:25:18', '2022-06-04 15:25:18'),
(31, 'Green Bean Curry', '1 tablespoon vegetable oil,1 onion, sliced,1 serrano peppers, thinly sliced,1 clove garlic, crushed,5 fresh curry leaves,1 tablespoon curry powder,½ teaspoon fenugreek seeds,¼ teaspoon ground turmeric,salt to taste,1 pound fresh green beans, trimmed,½ cup coconut milk,2 tablespoons lime juice\r\n', 'Step 1\r\nHeat the oil in a saucepan over medium-high heat. Cook the onion, serrano pepper, garlic, and curry leaves in the oil until the onions are golden brown. Stir in the curry powder, fenugreek seeds, turmeric, and salt; cook another 3 minutes. Add the green beans to the mixture and stir until evenly coated. Reduce heat to medium-low and cook until the beans are al dente. Pour in the coconut milk and simmer at least 5 minutes more. Remove from heat and stir in the lime juice just before serving.\r\n', '281608097_358302959621962_3521653522015038912_n.jpg', '2022-06-04 15:29:35', '2022-06-04 15:29:35'),
(32, 'French Fried Potatoes', '2 cups warm water,⅓ cup white sugar,2 large russet potatoes - peeled, and sliced into 1/4 inch strips,6 cups vegetable oil for frying salt to taste\r\n', 'Step 1\r\nStir together warm water and sugar in a medium bowl. Soak potatoes in water mixture for 15 minutes. Remove potatoes from water and dry thoroughly on paper towels.\r\n•	 Step 2\r\nHeat oil in a deep-fryer to 375 degrees F (190 degrees C).\r\n•	 Step 3\r\nCook potatoes in hot oil until golden, 5 to 6 minutes. Drain on paper towels and season with salt.\r\n', '274268725_293932679360326_2878905138454737674_n.jpg', '2022-06-04 15:31:52', '2022-06-04 15:31:52'),
(33, 'Potato and mushroom curry recipe', '75ml (5 tbsp) olive oil,250g (8oz) chestnut mushrooms, halved or quartered if large,1 red onion, peeled and roughly chopped,300g (10oz) potatoes, roughly cubed,1 medium aubergine, trimmed and roughly chopped,4 tbsp curry paste,150ml (¼ pint) vegetable stock,1 x 400ml tin coconut milk,200g (7oz) baby spinach,8 tbsp fres\r\n', 'Method\r\n1.	Heat 2 tablespoons of the oil in a large heavy-based frying pan and cook the mushrooms and onion over a moderately high heat for 4-5 minutes until softened and golden. Remove from the pan using a slotted spoon and place onto a plate to keep warm.\r\n2.	Heat the remaining oil in the pan and cook the potatoes and aubergine over a moderately high heat for 4-5 minutes until the aubergine is golden and soft and the potatoes are beginning to soften and turn golden.\r\n3.	Add the curry paste and stir well to coat, then add the stock and bring to the boil. Cover and simmer for 5 minutes. Return the mushrooms and onion to the pan, then add the coconut milk and gently simmer for 10 minutes before stirring in the spinach leaves and coriander. Cook again for 2-3 minutes until the spinach has wilted.\r\n4.	Serve ladled over hot wholegrain basmati rice, with garlic and coriander naan breads and natural yogurt, if you like.\r\n', '283964309_423164429636705_8002520016411353919_n.jpg', '2022-06-04 15:34:24', '2022-06-04 15:34:24'),
(34, 'Simple Boiled Broccoli', '1 bunch broccoli (about 1 pound),Kosher salt and freshly ground black pepper,Lemon wedges, for serving\r\n', '\r\n	\r\n1.	Wash the broccoli in cold water and pat dry. Peel the stem and trim right where the florets branch off. Break apart the florets.\r\n2.	Bring a pot of salted water to a boil. Add the broccoli florets and cook, uncovered, until tender, 2 to 3 minutes depending on the size of the florets. Drain into a colander, transfer to a plate, sprinkle with salt and pepper and serve with lemon wedges.\r\n', '282459160_2621565741307263_8082984638600616509_n.jpg', '2022-06-04 15:36:27', '2022-06-04 15:36:27'),
(35, 'Pumpkin Curry', '½ pumpkin, peeled and chopped,2 tablespoons oil,1 onion, chopped,4 cloves garlic, crushed,½ teaspoon cumin,½ teaspoon coriander,garam masala - start with a teaspoon and add more if you like,1 can coconut milk (lite if preferred),¼ teaspoon chilli powder (optional)\r\n', 'Instructions\r\n1.	In a large saucepan, sauté onion, garlic and spices in oil.\r\n2.	Add coconut milk and chopped pumpkin. Bring to the boil and simmer until pumpkin is tender and sauce is reduced.\r\n3.	Serve with rice and accompaniments. Traditional curry accompaniments include chutney, coconut, sliced banana and poppadums.\r\n4.	Style it up with a sprinkle of fresh chopped coriander and some cashew nuts or eat it as is, with rice or rolled in flatbread.\r\n', '281901853_338062535099059_8961764038602938469_n.jpg', '2022-06-04 15:39:01', '2022-06-04 15:39:01'),
(36, 'Bean Sprouts With Tofu', '8 oz. (226 g) bean sprouts,1 piece firm tofu, cut into rectangle pieces,Oil, for pan-frying,1 tablespoon oil,1-2 cloves garlic, minced,1 tablespoon soy sauce,1 stalk scallion, cut into 2-inch lengths\r\n', 'Instructions\r\n1.	Rinse the bean sprouts with cold running water, drained and set aside. Remove the roots if you desire.\r\n2.	Heat up a wok and add some cooking oil for pan-frying the tofu. When the oil is fully heated, pan-fry the tofu until they turn light brown on the surface. Transfer them to a dish lined with paper towels.\r\n3.	Leave about 1 tablespoon of oil in the same wok, stir-fry the garlic until aromatic, then add the tofu back into the wok for a few quick stirs before adding the bean sprouts. Add soy sauce, scallions, and do a few more quick stirs. Dish out and serve immediately.\r\n', '280397599_476018787625183_8108466511787984265_n.jpg', '2022-06-04 15:40:59', '2022-06-04 15:40:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meat`
--
ALTER TABLE `meat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seafood`
--
ALTER TABLE `seafood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soup`
--
ALTER TABLE `soup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meat`
--
ALTER TABLE `meat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `seafood`
--
ALTER TABLE `seafood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `soup`
--
ALTER TABLE `soup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vegetables`
--
ALTER TABLE `vegetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
