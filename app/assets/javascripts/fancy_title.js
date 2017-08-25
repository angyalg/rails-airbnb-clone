// // This JS is for the subtitle on the homepage

// const prefix = "Explore ";
// const skills = [
//   "work spaces",
//   "creative spaces",
//   "retail spaces",
//   "event spaces"
// ].map(s => `${s}.`);
// const delay = 2;
// const step = 1;
// const tail = 5;
// const timeout = 75;

// const fancy = document.createElement("p");
// $('#fancy-title').html(fancy);

// const colors = [
//   "rgb(110,64,170)",
//   "rgb(150,61,179)",
//   "rgb(191,60,175)",
//   "rgb(228,65,157)",
//   "rgb(254,75,131)",
//   "rgb(255,94,99)",
//   "rgb(255,120,71)",
//   "rgb(251,150,51)",
//   "rgb(226,183,47)",
//   "rgb(198,214,60)",
//   "rgb(175,240,91)",
//   "rgb(127,246,88)",
//   "rgb(82,246,103)",
//   "rgb(48,239,130)",
//   "rgb(29,223,163)",
//   "rgb(26,199,194)",
//   "rgb(35,171,216)",
//   "rgb(54,140,225)",
//   "rgb(76,110,219)",
//   "rgb(96,84,200)"
// ];
// function getRandomColor() {
//   return colors[Math.floor(Math.random() * colors.length)];
// }
// function getRandomChar() {
//   return String.fromCharCode(Math.random() * (127 - 33) + 33);
// }
// function getRandomColoredString(n) {
//   const fragment = document.createDocumentFragment();
//   for (let i = 0; i < n; i++) {
//     const char = document.createElement("span");
//     char.textContent = getRandomChar();
//     char.style.color = getRandomColor();
//     fragment.appendChild(char);
//   }
//   return fragment;
// }

// const ss = {
//   text: "",
//   prefixP: -tail,
//   skillI: 0,
//   skillP: 0,
//   direction: "forward",
//   delay,
//   step
// };

// function render() {
//   const skill = skills[ss.skillI];

//   if (ss.step) {
//     ss.step--;
//   } else {
//     ss.step = step;
//     if (ss.prefixP < prefix.length) {
//       if (ss.prefixP >= 0) {
//         ss.text += prefix[ss.prefixP];
//       }
//       ss.prefixP++;
//     } else {
//       if (ss.direction === "forward") {
//         if (ss.skillP < skill.length) {
//           ss.text += skill[ss.skillP];
//           ss.skillP++;
//         } else {
//           if (ss.delay) {
//             ss.delay--;
//           } else {
//             ss.direction = "backward";
//             ss.delay = delay;
//           }
//         }
//       } else {
//         if (ss.skillP > 0) {
//           ss.text = ss.text.slice(0, -1);
//           ss.skillP--;
//         } else {
//           ss.skillI = (ss.skillI + 1) % skills.length;
//           ss.direction = "forward";
//         }
//       }
//     }
//   }

//   fancy.textContent = ss.text;
//   fancy.appendChild(
//     getRandomColoredString(
//       ss.prefixP < prefix.length
//         ? Math.min(tail, tail + ss.prefixP)
//         : Math.min(tail, skill.length - ss.skillP)
//     )
//   );
//   setTimeout(render, timeout);
// }
// setTimeout(render, 500);
