// const axios = require('axios');
// const cheerio = require('cheerio');

// // Send a GET request to the website
// const url = 'https://openai.com/blog/chatgpt';
// axios.get(url)
//   .then(response => {
//     if (response.status === 200) {
//       // Load the HTML content using Cheerio
//       const $ = cheerio.load(response.data);

//       // Find and print all the links on the page
   
//       $('a').each((index, element) => {
//         const link = $(element).attr('href');
//         console.log(link);
//       });
//     }
//   })
//   .catch(error => {
//     console.log('Error:', error);
//   });
