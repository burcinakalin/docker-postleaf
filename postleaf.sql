-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2016 at 08:30 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `postleaf`
--

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_history`
--

CREATE TABLE IF NOT EXISTS `postleaf_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` int(11) NOT NULL,
  `rev_date` datetime NOT NULL,
  `post_data` longtext NOT NULL,
  `initial` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post` (`post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `postleaf_history`
--

INSERT INTO `postleaf_history` (`id`, `post`, `rev_date`, `post_data`, `initial`) VALUES
(1, 1, '2016-09-20 21:30:17', '{"id":1,"slug":"welcome-to-postleaf","created":"2016-09-20 13:30:17","pub_date":"2016-07-27 22:50:00","author":"administrator","title":"Welcome to Postleaf","content":"<p>Hi, I''m Cory, the creator of Postleaf. Thanks for trying it out!<\\/p>\\n<p>I spent the last two years building Postleaf because I wanted to bring a better publishing experience to designers, developers, and bloggers everywhere.<\\/p>\\n<p>If you enjoy using Postleaf, please pay it forward by <a href=\\"https:\\/\\/twitter.com\\/intent\\/tweet?text=Check%20out%20@postleafapp:%20a%20free,%20open%20source%20publishing%20platform!%20https:\\/\\/www.postleaf.org\\/\\" target=\\"_blank\\">telling someone<\\/a> about it or <a href=\\"https:\\/\\/www.postleaf.org\\/support\\" target=\\"_blank\\">contributing<\\/a> to the project.<\\/p>\\n<h2>Getting Started<\\/h2>\\n<p>I''ve included a few sample posts to help you get started. Please read through each one to get an idea of how things work.<\\/p>\\n<p>If you need help, head over to <a href=\\"https:\\/\\/community.postleaf.org\\/\\" target=\\"_blank\\">community.postleaf.org<\\/a> for assistance.<\\/p>\\n<h2>Admin Panel<\\/h2>\\n<p>To access the admin panel, go to: <code>your-domain.com\\/admin<\\/code><\\/p>\\n<h2>Quick Tips<\\/h2>\\n<p>Need to find something? Press <code>CMD\\/CTRL + P<\\/code> to open the locater. You can search for posts, tags, users, and more with just a few keystrokes.<\\/p>\\n<p>Want to delete more than one post at a time? Hold down <code>CMD\\/CTRL<\\/code> and click, or select a range by holding down <code>SHIFT<\\/code>. This works for tags and users too.<\\/p>\\n<p>Postleaf saves a copy of every post you publish. From the editor, go to <em>Settings &gt; History<\\/em> to view them. You can also view, restore, and delete revisions from the history panel.<\\/p>\\n<p>Save time using keyboard shortcuts. You''ll find a list of all available shortcuts <a href=\\"https:\\/\\/www.postleaf.org\\/keyboard-shortcuts\\" target=\\"_blank\\">in the docs<\\/a>.<\\/p>\\n<p>You can backup your entire website \\u2014 including content, uploads, and themes \\u2014 by going to <em>Settings &gt; Backups<\\/em>. Postleaf will generate a single <em>.tar<\\/em> file for your convenience.<\\/p>\\n<p>Oh, and don''t forget to update your profile! Set your avatar and tell us about yourself by filling in your bio. Head over to <em>Users<\\/em> to do that now.<\\/p>\\n<p>Looking for a great place to get high quality cover photos? All the ones used in these starter posts are from <a href=\\"https:\\/\\/unsplash.com\\/\\" target=\\"_blank\\">Unsplash<\\/a>.<\\/p>","image":"source\\/assets\\/img\\/leaves.jpg","meta_title":"","meta_description":"","status":"published","page":0,"featured":0,"sticky":1,"tags":["getting-started"]}', 1),
(2, 2, '2016-09-20 21:30:17', '{"id":2,"slug":"the-editor","created":"2016-09-20 13:30:17","pub_date":"2016-07-27 22:50:00","author":"administrator","title":"The Editor","content":"<p>Postleaf is the first open source publishing platform to feature true WYSIWYG editing. No more forms or rich-text controls \\u2014 it''s just like typing on the live webpage. Here are some tips for using the editor.<\\/p>\\n<h2>The Toolbar<\\/h2>\\n<p>The toolbar has all the options you''re familiar with. You can format text, insert links or images, and embed content from third-party websites such as Vimeo or Instagram.<\\/p>\\n<p>Postleaf strives to produce clean, semantic markup. The idea is to let authors focus on their content, not on how their content <em>looks<\\/em>. That''s why you won''t find any tools to change fonts, colors, or sizes. Postleaf let''s your theme do all the styling and keeps your markup free from inline CSS.<\\/p>\\n<h2>Drag &amp; Drop<\\/h2>\\n<p>You can insert images and other files using the <em>Images<\\/em> and <em>Link<\\/em> buttons, respectively. Or just drop a file into the editor. Images will be uploaded and inserted directly into your post, and other files will be uploaded and inserted as a link.<\\/p>\\n<h2>Settings<\\/h2>\\n<p>Click the cog button to open the <em>Settings<\\/em> panel. From there, you can fine tune each post from the URL all the way down to metadata.<\\/p>\\n<p>Use the <em>History<\\/em> tab to view all a post''s past revisions. One click will show you a preview of the post at any given time. Another will revert the post back to that state, including all content, metadata, and settings.<\\/p>\\n<h2>Zen Mode<\\/h2>\\n<p>Inline editing is awesome, but sometimes you just want to get in the zone and focus on writing. Postleaf can accommodate you with <em>zen mode<\\/em>. Just click the leaf button and all your styles will disappear so you can become one with your content. Another click will restore Postleaf''s incredible inline editing experience.<\\/p>","image":"source\\/assets\\/img\\/sunflower.jpg","meta_title":"","meta_description":"","status":"published","page":0,"featured":0,"sticky":0,"tags":["getting-started"]}', 1),
(3, 3, '2016-09-20 21:30:17', '{"id":3,"slug":"themes-and-plugins","created":"2016-09-20 13:30:17","pub_date":"2016-07-27 22:50:00","author":"administrator","title":"Themes & Plugins","content":"<h2>Themes<\\/h2>\\n<p>Postleaf templates are built with a simple but powerful template system called <em>Handlebars<\\/em>. If you''ve never used Handlebars before, <a href=\\"https:\\/\\/www.postleaf.org\\/intro-to-handlebars\\" target=\\"_blank\\">you''re in for a treat<\\/a>.<\\/p>\\n<p>Handlebar templates are easy to create and don''t require any PHP programming whatsoever.<\\/p>\\n<p>The easiest way to get started is to open the <em>.hbs<\\/em> files in <strong>content\\/themes\\/range<\\/strong> and play around with them. They''re just HTML files with <code>{{placeholders}}<\\/code>, so it won''t be long before you''re building your own themes. For more info about themes, check out <a href=\\"https:\\/\\/www.postleaf.org\\/tag\\/themes\\" target=\\"_blank\\">these posts<\\/a>.<\\/p>\\n<p>Tip: You might need to configure your text editor to open <em>.hbs<\\/em> files.<\\/p>\\n<h2>Plugins<\\/h2>\\n<p>Plugins aren''t supported in the beta release of Postleaf, but they''re coming soon. I want to creating a solid foundation before we start building things on top of it.<\\/p>\\n<p>In the meantime, let me know how you''d like to extend Postleaf by tweeting to <a href=\\"http:\\/\\/twitter.com\\/postleafapp\\" target=\\"_blank\\">@postleafapp<\\/a>!<\\/p>","image":"source\\/assets\\/img\\/autumn.jpg","meta_title":"","meta_description":"","status":"published","page":0,"featured":0,"sticky":0,"tags":["getting-started"]}', 1),
(4, 4, '2016-09-20 21:30:17', '{"id":4,"slug":"help-and-support","created":"2016-09-20 13:30:17","pub_date":"2016-07-27 22:50:00","author":"administrator","title":"Help & Support","content":"<h2>Postleaf is Free Software<\\/h2>\\n<p>There''s \\"free\\" as in freedom and \\"free\\" as in beer, and while I very much appreciate both of those things, it''s important to remember that <strong>even though software may be <em>free<\\/em>, it takes a lot of time and money to develop, maintain, and support.<\\/strong><\\/p>\\n<p>I''m a lone developer with a business to run and a family to feed, so I can''t spend all my time providing free support for Postleaf. If you need help, first <a href=\\"docs\\" target=\\"_blank\\">check the docs<\\/a>. If you can''t find an answer there, please ask your question on the <a href=\\"https:\\/\\/community.postleaf.org\\/\\" target=\\"_blank\\">community forum<\\/a> so we can all benefit.<\\/p>\\n<h2>Contribute<\\/h2>\\n<p>This software took me two years to design, develop, and bring to life. If you use Postleaf, please support its development by making a donation. Big or small \\u2014 every penny will go towards making Postleaf even more amazing.<\\/p>\\n<p>To make a contribution, please visit <a href=\\"https:\\/\\/www.postleaf.org\\/support\\" target=\\"_blank\\">postleaf.org\\/support<\\/a>.<\\/p>\\n<h2>Twitter<\\/h2>\\n<p>Stay up to date by following <a href=\\"https:\\/\\/twitter.com\\/postleafapp\\" target=\\"_blank\\">@postleafapp<\\/a> on Twitter. Send a shoutout if you want, but please don''t ask for help there. Try <a href=\\"docs\\" target=\\"_blank\\">the docs<\\/a> or <a href=\\"https:\\/\\/community.postleaf.org\\/\\" target=\\"_blank\\">the forum<\\/a> instead.<\\/p>","image":"source\\/assets\\/img\\/ladybug.jpg","meta_title":"","meta_description":"","status":"published","page":0,"featured":0,"sticky":0,"tags":["getting-started"]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_posts`
--

CREATE TABLE IF NOT EXISTS `postleaf_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `pub_date` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `image` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` enum('published','draft') NOT NULL DEFAULT 'published',
  `page` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `sticky` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`) USING BTREE,
  KEY `pub_date` (`pub_date`),
  FULLTEXT KEY `title_fts` (`slug`,`title`),
  FULLTEXT KEY `content_fts` (`content`),
  FULLTEXT KEY `all_fts` (`slug`,`title`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `postleaf_posts`
--

INSERT INTO `postleaf_posts` (`id`, `slug`, `created`, `pub_date`, `author`, `title`, `content`, `image`, `meta_title`, `meta_description`, `status`, `page`, `featured`, `sticky`) VALUES
(1, 'welcome-to-postleaf', '2016-09-20 17:30:17', '2016-07-28 02:50:00', 1, 'Welcome to Postleaf', '<p>Hi, I''m Cory, the creator of Postleaf. Thanks for trying it out!</p>\n<p>I spent the last two years building Postleaf because I wanted to bring a better publishing experience to designers, developers, and bloggers everywhere.</p>\n<p>If you enjoy using Postleaf, please pay it forward by <a href="https://twitter.com/intent/tweet?text=Check%20out%20@postleafapp:%20a%20free,%20open%20source%20publishing%20platform!%20https://www.postleaf.org/" target="_blank">telling someone</a> about it or <a href="https://www.postleaf.org/support" target="_blank">contributing</a> to the project.</p>\n<h2>Getting Started</h2>\n<p>I''ve included a few sample posts to help you get started. Please read through each one to get an idea of how things work.</p>\n<p>If you need help, head over to <a href="https://community.postleaf.org/" target="_blank">community.postleaf.org</a> for assistance.</p>\n<h2>Admin Panel</h2>\n<p>To access the admin panel, go to: <code>your-domain.com/admin</code></p>\n<h2>Quick Tips</h2>\n<p>Need to find something? Press <code>CMD/CTRL + P</code> to open the locater. You can search for posts, tags, users, and more with just a few keystrokes.</p>\n<p>Want to delete more than one post at a time? Hold down <code>CMD/CTRL</code> and click, or select a range by holding down <code>SHIFT</code>. This works for tags and users too.</p>\n<p>Postleaf saves a copy of every post you publish. From the editor, go to <em>Settings &gt; History</em> to view them. You can also view, restore, and delete revisions from the history panel.</p>\n<p>Save time using keyboard shortcuts. You''ll find a list of all available shortcuts <a href="https://www.postleaf.org/keyboard-shortcuts" target="_blank">in the docs</a>.</p>\n<p>You can backup your entire website — including content, uploads, and themes — by going to <em>Settings &gt; Backups</em>. Postleaf will generate a single <em>.tar</em> file for your convenience.</p>\n<p>Oh, and don''t forget to update your profile! Set your avatar and tell us about yourself by filling in your bio. Head over to <em>Users</em> to do that now.</p>\n<p>Looking for a great place to get high quality cover photos? All the ones used in these starter posts are from <a href="https://unsplash.com/" target="_blank">Unsplash</a>.</p>', 'source/assets/img/leaves.jpg', '', '', 'published', 0, 0, 1),
(2, 'the-editor', '2016-09-20 17:30:17', '2016-07-28 02:50:00', 1, 'The Editor', '<p>Postleaf is the first open source publishing platform to feature true WYSIWYG editing. No more forms or rich-text controls — it''s just like typing on the live webpage. Here are some tips for using the editor.</p>\n<h2>The Toolbar</h2>\n<p>The toolbar has all the options you''re familiar with. You can format text, insert links or images, and embed content from third-party websites such as Vimeo or Instagram.</p>\n<p>Postleaf strives to produce clean, semantic markup. The idea is to let authors focus on their content, not on how their content <em>looks</em>. That''s why you won''t find any tools to change fonts, colors, or sizes. Postleaf let''s your theme do all the styling and keeps your markup free from inline CSS.</p>\n<h2>Drag &amp; Drop</h2>\n<p>You can insert images and other files using the <em>Images</em> and <em>Link</em> buttons, respectively. Or just drop a file into the editor. Images will be uploaded and inserted directly into your post, and other files will be uploaded and inserted as a link.</p>\n<h2>Settings</h2>\n<p>Click the cog button to open the <em>Settings</em> panel. From there, you can fine tune each post from the URL all the way down to metadata.</p>\n<p>Use the <em>History</em> tab to view all a post''s past revisions. One click will show you a preview of the post at any given time. Another will revert the post back to that state, including all content, metadata, and settings.</p>\n<h2>Zen Mode</h2>\n<p>Inline editing is awesome, but sometimes you just want to get in the zone and focus on writing. Postleaf can accommodate you with <em>zen mode</em>. Just click the leaf button and all your styles will disappear so you can become one with your content. Another click will restore Postleaf''s incredible inline editing experience.</p>', 'source/assets/img/sunflower.jpg', '', '', 'published', 0, 0, 0),
(3, 'themes-and-plugins', '2016-09-20 17:30:17', '2016-07-28 02:50:00', 1, 'Themes & Plugins', '<h2>Themes</h2>\n<p>Postleaf templates are built with a simple but powerful template system called <em>Handlebars</em>. If you''ve never used Handlebars before, <a href="https://www.postleaf.org/intro-to-handlebars" target="_blank">you''re in for a treat</a>.</p>\n<p>Handlebar templates are easy to create and don''t require any PHP programming whatsoever.</p>\n<p>The easiest way to get started is to open the <em>.hbs</em> files in <strong>content/themes/range</strong> and play around with them. They''re just HTML files with <code>{{placeholders}}</code>, so it won''t be long before you''re building your own themes. For more info about themes, check out <a href="https://www.postleaf.org/tag/themes" target="_blank">these posts</a>.</p>\n<p>Tip: You might need to configure your text editor to open <em>.hbs</em> files.</p>\n<h2>Plugins</h2>\n<p>Plugins aren''t supported in the beta release of Postleaf, but they''re coming soon. I want to creating a solid foundation before we start building things on top of it.</p>\n<p>In the meantime, let me know how you''d like to extend Postleaf by tweeting to <a href="http://twitter.com/postleafapp" target="_blank">@postleafapp</a>!</p>', 'source/assets/img/autumn.jpg', '', '', 'published', 0, 0, 0),
(4, 'help-and-support', '2016-09-20 17:30:17', '2016-07-28 02:50:00', 1, 'Help & Support', '<h2>Postleaf is Free Software</h2>\n<p>There''s "free" as in freedom and "free" as in beer, and while I very much appreciate both of those things, it''s important to remember that <strong>even though software may be <em>free</em>, it takes a lot of time and money to develop, maintain, and support.</strong></p>\n<p>I''m a lone developer with a business to run and a family to feed, so I can''t spend all my time providing free support for Postleaf. If you need help, first <a href="docs" target="_blank">check the docs</a>. If you can''t find an answer there, please ask your question on the <a href="https://community.postleaf.org/" target="_blank">community forum</a> so we can all benefit.</p>\n<h2>Contribute</h2>\n<p>This software took me two years to design, develop, and bring to life. If you use Postleaf, please support its development by making a donation. Big or small — every penny will go towards making Postleaf even more amazing.</p>\n<p>To make a contribution, please visit <a href="https://www.postleaf.org/support" target="_blank">postleaf.org/support</a>.</p>\n<h2>Twitter</h2>\n<p>Stay up to date by following <a href="https://twitter.com/postleafapp" target="_blank">@postleafapp</a> on Twitter. Send a shoutout if you want, but please don''t ask for help there. Try <a href="docs" target="_blank">the docs</a> or <a href="https://community.postleaf.org/" target="_blank">the forum</a> instead.</p>', 'source/assets/img/ladybug.jpg', '', '', 'published', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_post_tags`
--

CREATE TABLE IF NOT EXISTS `postleaf_post_tags` (
  `post` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  KEY `post` (`post`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postleaf_post_tags`
--

INSERT INTO `postleaf_post_tags` (`post`, `tag`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_settings`
--

CREATE TABLE IF NOT EXISTS `postleaf_settings` (
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postleaf_settings`
--

INSERT INTO `postleaf_settings` (`name`, `value`) VALUES
('auth_key', '519052310e7ab7931fa16452b1a4addf0571e90bf54ea8e086dc256bfe730af4'),
('allowed_upload_types', 'pdf,doc,docx,ppt,pptx,pps,ppsx,odt,xls,xlsx,psd,txt,md,csv,jpg,jpeg,png,gif,ico,svg,mp3,m4a,ogg,wav,mp4,m4v,mov,wmv,avi,mpg,ogv,3gp,3g2'),
('cover', 'source/assets/img/leaves.jpg'),
('default_content', 'Start writing here...'),
('default_title', 'Untitled Post'),
('favicon', 'source/assets/img/logo-color.png'),
('foot_code', ''),
('frag_admin', 'admin'),
('frag_author', 'author'),
('frag_blog', 'blog'),
('frag_feed', 'feed'),
('frag_page', 'page'),
('frag_search', 'search'),
('frag_tag', 'tag'),
('hbs_cache', 'on'),
('head_code', ''),
('homepage', ''),
('language', 'en-us'),
('logo', 'source/assets/img/logo-color.png'),
('navigation', '[{"label":"Home","link":"/"}]'),
('posts_per_page', '10'),
('tagline', 'Go forth and create!'),
('theme', 'range'),
('timezone', 'America/New_York'),
('title', 'A Postleaf Blog'),
('twitter', ''),
('password_min_length', '8');

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_tags`
--

CREATE TABLE IF NOT EXISTS `postleaf_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `cover` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `postleaf_tags`
--

INSERT INTO `postleaf_tags` (`id`, `slug`, `created`, `name`, `description`, `cover`, `meta_title`, `meta_description`) VALUES
(1, 'getting-started', '2016-09-20 17:30:17', 'Getting Started', 'This is a sample tag. You can delete it, rename it, or do whatever you want with it!', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_uploads`
--

CREATE TABLE IF NOT EXISTS `postleaf_uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `path` varchar(191) NOT NULL,
  `filename` varchar(191) NOT NULL,
  `extension` varchar(191) NOT NULL,
  `size` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `postleaf_users`
--

CREATE TABLE IF NOT EXISTS `postleaf_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `reset_token` varchar(191) NOT NULL,
  `role` enum('owner','admin','editor','author') NOT NULL DEFAULT 'author',
  `bio` text NOT NULL,
  `cover` text NOT NULL,
  `avatar` text NOT NULL,
  `twitter` varchar(191) NOT NULL,
  `location` text NOT NULL,
  `website` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `postleaf_users`
--

INSERT INTO `postleaf_users` (`id`, `slug`, `created`, `name`, `email`, `password`, `reset_token`, `role`, `bio`, `cover`, `avatar`, `twitter`, `location`, `website`) VALUES
(1, 'administrator', '2016-09-20 17:30:17', 'admin', 'admin@yoursite.com', '$2y$10$Uzj.5S4FWX.JRZ8OyH8d5e/umvMuHVgl9PxXSj/xlUO/gfiD5wqJq', '', 'owner', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

