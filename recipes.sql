-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2015 at 01:18 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recipebox_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `ingredients` text,
  `steps` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `recipe_img` varchar(191) DEFAULT 'dinner-plate',
  `comments` text,
  `approved` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `ingredients`, `steps`, `user_id`, `created_at`, `updated_at`, `recipe_img`, `comments`, `approved`) VALUES
(1, 'Cornmeal Muffins', '1 cup flour; 2 cups cornmeal; 1/2 cup sugar; 3 teaspoons baking powder; 1/4 teaspoon salt; 2 eggs; 2 cups milk; 1 tablespoon butter, melted', 'Sift all dry ingredients together Beat egg and add milk. Stir into dry ingredients. Stir in melted butter. Bake at 400 degrees in greased pans or paper muffin cups for 20-30 minutes or until golden brown.', 1, '2015-05-19 17:59:02', '2015-05-20 16:49:25', 'cornmeal-muffins.jpg', 'This recipe is adapted and modernized from the 1915 Suffrage Cook Book, which is now in the public domain and hosted at Project Gutenberg.', 1),
(2, 'Cheesecake Supreme', '4-1/4 cups all purpose flour; 15 tablespoons sugar; 4 teaspoons grated lemon peel; 6 tablespoons butter or margarine; 3 egg yolks, slightly beaten; 2-1/2 teaspoons vanilla; 3 8-ounce packages cream cheese; 1 cup sugar; 2 tablespoons all purpose flour; 1/4 teaspoon salt; 2 whole eggs; 1 egg yolk; 1/4 cup milk; 1 cup fresh strawberries, halved; strawberry glaze (instructions at end of recipe)', '<p>In mixing bowl, combine flour, sugar and 3 teaspoons lemon peel. Cut in butter until crumbly. Stir in egg yolks and half (1-1/4 teaspoons) of vanilla. Pat one-third of the dough onto bottom of springform pan (sides removed). Bake at 400 degrees F for 7 minutes or until golden. Cool.</p>\r\n\r\n<p>Butter sides of pan and attach to bottom. Pat remaining dough on pan sides to 1-3/4 inches height.</p>\r\n\r\n<p>For filling, let cream cheese get to room temperature. Beat in electric mixer until creamy; add rest of lemon peel and vanilla. Mix 1 cup sugar, 2 tablespoons four and 1/4 teaspoon salt and gradually blend with cheese. Add eggs and egg yolk and beat just until blended. Stir in milk. Turn into the crust lined pan.</p>\r\n\r\n<p>Bake at 450 degrees F for 10 minutes. Reduce heat to 300 degrees and bake 55 minutes or until center appears set. Remove from oven and cool 15 minutes. Loosen sides of cheesecake from pan with spatula. Cool one-half hour longer and remove pan sides. Cool 2 hours longer.</p>\r\n\r\n<p>Add halved fresh strawberries and pour glaze over them. Chill for at least 2 hours.\r\n\r\n<p>Strawberry glaze: Crush 3/4 cup fresh strawberries and add 1/2 cup water. Cook 2 minutes and pour through strainer. In saucepan combine 1/3 cup sugar and 4 teaspoons cornstarch. Gradually stir in berry mixture. Bring to boil while stirring constantly. Cook and stir until thickened and clear. Cool to room temperature.</p>\r\n\r\n<p>Serves 12.</p>', 2, '2015-05-22 14:42:27', '2015-05-22 15:16:54', 'cheesecake.jpg', 'Recipe was adapted from one that appeared in Better Homes & Garden Complete Step-by-Step Cookbook, published 1978. The crust ingredient amounts were increased to more accurately cover inside of 8-inch springform pan with about a 1/4-inch crust for greater support for cheese filling.', 1),
(4, 'Stroganoff', '1 pound beef tenderloin or pork loin; 3 tablespoons oil; 1-1/2 cups sliced mushrooms (4 ounces); 1/2 cup dry sherry; 1/4 cup beef broth; 1 cup sour cream; 1/2 teaspoon salt; hot cooked noodles', 'Cut loin across grain into 1/4-inch thick strips. Heat oil in skillet and brown the meat, 2 to 4 minutes. Remove from skillet and add sliced mushrooms; cook for 2 to 3 minutes and remove. Add sherry and beef broth and bring to boil. Cook until reduced to 1/3 cup. Stir in sour cream, salt, meat and mushrooms. Cook slowly until heated through; do not boil. Serve over hot noodles. Serves 4.', 2, '2015-05-22 15:25:14', '2015-05-22 15:25:14', 'stroganoff.jpg', 'Original recipe appeared with beef as meat ingredient in Better Homes & Gardens Complete Step-by-Step Cookbook (1978). Adapted so you can use pork or beef.', 1),
(5, 'Banana-Nut Bread', '2 cups all-purpose flour;2 teaspoons baking soda;1/2 cup shortening;1/2 cup sugar;2 eggs;1 teaspoon orange peel; 2 ripe bananas, cut up and mashed; 2 tablespoons milk;1/2 cup chopped pecans or walnuts', '<p>Lightly grease 9 x 5 x 3 inch loaf pan and set aside.Stir together flour, baking powder, salt and soda and set aside. In small mixing bowl cream shortening and sugar together until light and fluffy. Add eggs and orange peel and beat well.</p>\r\n\r\n<p>In small bowl thoroughly combine bananas and milk. Alternatively add flour and banana mixtures to creamed shortening and sugar, beating until smooth after each addition. Fold in nuts and pour batter into pan.</p>\r\n\r\n<p>Bake at 350 degrees F for 45 to 50 minutes or until toothpick inserted near center comes out clean. Let cool completely and gently turn out of pan. ', 5, '2015-05-28 18:25:17', '2015-05-28 18:38:12', 'banana-bread.jpg', 'Better Homes & Garden Recipe', 1),
(6, 'Baked Chicken Dijon', '4 tablespoons Dijon mustard; 2 tablespoons oil; 1 teaspoon garlic powder;1/2 teaspoon Italian seasoning;4 boneless chicken breast halves ', 'Mix first four ingredients in large bowl. Add chicken and toss to coat well. Bake at 375 degrees F for 45 minutes, or until done.', 6, '2015-05-28 19:09:02', '2015-05-28 19:20:05', 'chicken-dijon.jpg', 'From Recipes Wikia, via Ladies'' Home Journal', 1),
(8, 'Fried Rice', '3 cups cooked brown or white rice; 1 10-ounce package frozen mixed vegetables or 2 cups fresh vegetables, chopped; 1 small onion, finely chopped; 1 cup cooked poultry or meat (optional); 2 eggs, lightly beaten; 2 teaspoons vegetable oil; 3 teaspoons soy sauce ', '<p>In large pan, heat oil on medium-high heat and add onion and rice. Stir and cook until onion is soft, about 5 minutes.</p>\r\n<p>Reduce heat to medium and add vegetables and meat to rice mixture.\r\nCook 2 minutes for frozen vegetables and 5 to 7 minutes for fresh vegetables.</p>\r\n<p>Spread mixture out to sides of the pan, leaving space in the middle for eggs. Add eggs and scramble until cooked firm. Mix with rice and vegetables, then sprinkle with soy sauce.</p> ', 5, '2015-06-11 15:09:12', '2015-06-11 15:09:12', 'fried-rice.jpg', 'From <em>The Public Health Cookbook</em> by the Seattle & King County Department of Public Health, a public domain government resource. Can be made vegetarian or add poultry, meat or seafood.', 1),
(9, 'Toll House Chocolate Chip Cookies', '2-1/4 cups all-purpose flour; 1 teaspoon baking soda; 1 teaspoon salt;1 cup (2 sticks, 1/2 pound) butter, softened; 3/4 cup granulated sugar; 3/4 cup packed brown sugar; 1 teaspoon vanilla extract;2 eggs; 2 cups (12-ounce package) semi-sweet chocolate chips; 1 cup chopped nuts ', '<p>Combine flour, baking soda and salt in small bowl. Beat butter, granulated sugar, brown sugar and vanilla in large mixer bowl.</p>\r\n<p>Add eggs one at a time, beating well after each addition. Gradually beat in flour mixture. Stir in morsels and nuts. Drop by rounded tablespoon onto ungreased baking sheets.</p>\r\n<p>Bake in preheated 375-degree F oven for 9 to 11 minutes or until golden brown. Let stand for 2 minutes; move to wire racks to cool completely.</p>\r\n<p><strong>High altitude (over 5,200 feet):</strong> Increase flour to 2 1/2 cups; add 2 teaspoonfuls water with flour; reduce both granulated sugar and brown sugar to 2/3 cup each. Bake at 375 degrees F, drop cookies for 8 to 10 minutes and pan cookies for 17 to 19 minutes.</p> ', 6, '2015-06-12 10:44:18', '2015-06-12 10:44:18', 'dinner-plate', 'From Nestle Foods. The original, authentic Toll House chocolate chip cookie recipe.', 1),
(10, 'Meat Pasta Sauce', '2 pounds ground beef; 8 very ripe tomatoes, sliced; 1 small red onion, diced into small cubes; 2 tablespoons olive oil; 2 red peppers; 1 pinch oregano,\r\nblack pepper and salt; 1 pound spaghetti or fettuccine ', '<p>Place ground beef in a bowl, mix in onion and add oregano, pepper and salt.</p>\r\n<p>In a shallow pan heat the oil. Add ground beef and stir to cook uniformly. Add 2 tablespoons water and tomatoes. Let simmer at low heat. Adjust water when necessary.</p>\r\n<p>When the meat is ready, let liquid evaporate to make a thick sauce. Adjust salt to taste. Turn off heat and reserve.</p>\r\n<p>Boil pasta according to package instructions in the package. When ready, top with sauce and serve immediately.</p>', 6, '2015-06-12 10:54:13', '2015-06-12 10:54:13', 'dinner-plate', 'Found at Recipes Wiki under Italian recipes.', 1),
(11, 'Fettucine Alfredo', '1 tablespoon margarine; 2 small cloves garlic, minced;1 tablespoon all purpose flour;1-1/3 cups skim milk;2 tablespoons light processed cream cheese; 1-1/4 cups (2-1/2 ounces) grated fresh Parmesan cheese, divided; 4 cups hot cooked fettuccine, cooked without salt or fat; 2 teaspoons chopped fresh parsley;Freshly ground pepper ', '<p>Melt margarine in saucepan over medium heat. Add garlic; saute 1 minute.</p>\r\n<p>Stir in flour. Gradually add milk, stirring with wire whisk until blended; cook minutes or until thickened and bubbly, stirring constantly.</p>\r\n<p>Stir in cream cheese, cook 2 minutes.\r\nAdd 1 cup Parmesan cheese, stirring constantly until it melts.</p>\r\n<p>Pour over hot cooked fettuccine and toss well to coat. Top with remaining 1/4 cup Parmesan cheese, fresh parsley and pepper.</p> \r\n', 3, '2015-06-12 11:01:42', '2015-06-12 11:01:42', 'dinner-plate', 'From Lois Flack, Cyberealm BBS, New York, via Recipes Wiki. A lower fat version of the famous sauce recipe.', 1),
(12, 'Honey Whole Wheat Bread', '3 to 3-1/2 cups whole wheat flour;1 teaspoon salt;1 envelope active instant yeast;3/4 cup 2 percent milk;1/4 cup water; 2 tablespoons vegetable oil; 3 tablespoons honey; 1 egg, lightly beaten ', '<p>In large bowl, combine 2-1/2 cups flour, salt and undissolved yeast. In small saucepan, heat milk, water, vegetable oil and honey until very warm (125 degrees F).</p>\r\n<p>Stir warm liquids into dry ingredients. Stir in eggs and blend well.<p>\r\n<p>Mix in enough remaining flour to make soft dough that begins to come away from sides of bowl and can be handled. Texture may be crumbly.</p>\r\n<p>Turn dough out onto lightly floured surface. Knead until smooth and elastic, about 5 to 8 minutes. Cover; let rest on floured surface 10 minutes.</p>\r\n<p>Roll dough (or stretch and pat) into 12 x 8-inch rectangle. Roll up ends as if making a jelly roll. Pinch seam and ends to seal.</p>\r\n<p>Place, seam side down, in greased 9- x 5-inch loaf pan. Cover and let rise in warm, draft-free place until doubled in size, about 30 to 45 minutes.</p>\r\n<p>Bake in 350 degrees F oven for 40 minutes or until done. Remove from pan to wire rack to cool.</p>', 3, '2015-06-12 11:18:41', '2015-06-12 11:18:41', 'dinner-plate', 'From Fleischmann''s, division of ConAgra Foods.', 1),
(13, 'Classic Margarita', '2 ounces tequila; 1 ounce orange-flavored liqueur (Cointreau or triple sec); 1 ounce fresh lime juice; salt ', '<p>The most common of all tequila-based cocktails. The most traditional recipe is three parts tequila, two parts triple sec and one part lime juice.</p>\r\n<p>Optional first step: salt the rim of a cocktail glass by rubbing the rim  with a lime wedge or half or paper towel, dip in coarse salt.</p>\r\n<p>Mix tequila, orange liqueur and citrus juice. Shake over ice or stir; however, shaking is preferred for mixing with fruit juices. Tequila also is a strong drink, so ice shards from shaking are of little consequence or even a benefit.</p>\r\n<p>Can be served on the rocks, though more purely it is served strained. Garnish with lime wedge or slice, if desired.</p>', 2, '2015-06-12 11:32:28', '2015-06-12 11:32:28', 'dinner-plate', 'From the Wikibooks Bartending Guide.', 1),
(14, 'Classic Pancakes', '2 cups water; 1/2 cup uncooked oatmeal; -1/2 cups whole wheat flour; 2 teaspoons baking powder; 1 teaspoon cinnamon; 1 teaspoon nutmeg;Vanilla extract to taste (optional) ', '<p>Combine dry ingredients and mix with water, leaving lumps in the batter.</p>\r\n<p>Pour 1/2 cup batter into a hot, lightly oiled frying pan. When bubbles rise through the middle of the pancake and break on top, flip and cook until browned underneath.</p>\r\n<p>For waffles, pour into waffle iron and cook according to manufacturer instructions.</p>\r\n\r\n    ', 2, '2015-06-12 12:21:34', '2015-06-12 12:21:34', 'dinner-plate', 'From Recipes Wiki. A classic to serve on a weekend morning or for dessert. Add butter or margarine and top with sweet syrups, fruits or preserves.', 1),
(15, 'Pumpkin Pie', '2 cups milk, scalded;2 cups pumpkin, cooked and strained (or plain canned pumpkin);1 cup  maple syrup; 1 ounce  sugar; 1 tablespoon flour;1/2 teaspoon salt;1 teaspoon ginger;1 teaspoon cinnamon;1/4 teaspoon nutmeg (optional);2 large eggs, beaten;1 unbaked 9-inch pie shell \r\n', '<p>Preheat oven to 350 degrees F.\r\nBlend all ingredients (except pie shell) together. Pour into shell. Bake at 350 degrees F for 45 minutes. Cool and serve.</p> \r\n<p>This recipe replaces much of the sugar normally found in a pumpkin pie recipe with maple syrup. Use only real 100 percent maple syrup, not maple-flavored pancake syrup, as the sugar content is different. You can also use brown sugar instead of maple syrup.</p> \r\n<p><strong>Using raw pumpkin:</strong> prepare by skinning and cutting into 1" cubes. Bake at 350 degrees F for an hour and then turn off the heat. Leave in the oven for another hour or two to reduce moisture content. Pumpkin may also be steamed but may end up with too much moisture, resulting in a runny pie.</p>\r\n<p>A 10-inch diameter pumpkin will make four to six pies. Pumpkin may also be baked whole and skinned afterwards.</p>\r\n<p>Pumpkin pie has no top crust, making most forms of decoration impossible. \r\nFor a more aesthetically pleasing pie, put dollops of real whipped cream on each slice, or add decorative rim to the side crust with artfully layered dough cut-outs, in the shape of fall leaves, squash or pumpkins.</p>', NULL, '2015-06-12 12:32:48', '2015-06-12 12:32:48', 'dinner-plate', 'From the Wikibooks cookbook, licensed under the GNU Free Documentation License. A traditional American holiday dessert that consists of a pumpkin-based custard baked in a single pie shell. Traditionally served with whipped cream.', 1),
(16, 'Creamy Squash, Apple and Corn Bisque', '1 pound acorn or butternut squash, peeled, seeded and finely chopped;3 tart apples, peeled, cored and finely chopped;3 tablespoons unsalted butter;3 medium leeks, rinsed well and sliced;1 clove garlic, minced;4 cups vegetable broth;1-1/2 cups frozen corn kernels;6 tablespoons heavy cream;1/4 teaspoon freshly grated nutmeg;4 scallions, finely minced, for garnish', '<p>Over medium heat, saute squash and apples in butter for 5 minutes, stirring occasionally. Add leeks and garlic and saute another 5 minutes.</p>\r\n<p>Add broth and corn and simmer 10 minutes. Stir in the cream and nutmeg and heat just until warmed through. Sprinkle with the scallions for garnish.</p> ', 2, '2015-06-12 12:41:18', '2015-06-12 12:41:18', 'dinner-plate', 'From Recipes Wikia', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
