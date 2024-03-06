var displayedMenu = "";
var hamburgerShown = false;
let width = screen.width;
var isMobile = width < 1024;

function toggleMenu(button) {
  if (displayedMenu === button.id.split("-")[0]) {
    button.className = button.className.replace(
      " text-gray-800 bg-stone-200 sm:bg-transparent",
      " text-gray-900"
    );
    hideMenu(button.id.split("-")[0]);
    button.lastElementChild.className = button.lastElementChild.className.replace(
      "rotate-0",
      "-rotate-90"
    );
    displayedMenu = "";
  } else {
    showMenu(button.id.split("-")[0]);
    button.lastElementChild.className = button.lastElementChild.className.replace(
      "-rotate-90",
      "rotate-0"
    );
    button.className = button.className.replace(
      " text-gray-900",
      " text-gray-800 bg-stone-200 sm:bg-transparent"
    );
    displayedMenu = button.id.split("-")[0];
  }

  document.addEventListener("click", function (e) {
    if (!button.contains(e.target)) {
      hideMenu(button.id.split("-")[0]);
      button.lastElementChild.className = button.lastElementChild.className.replace(
        "rotate-0",
        "-rotate-90"
      );
      displayedMenu = "";
    }
  });
}

function handleClick(button) {
  if (button.id === "hamburger-btn" || button.id === "close-hamburger-btn") {
    toggleHamburger();
  }
  if (button.id.indexOf("menu") !== -1) {
    toggleMenu(button);
  }
}

function toggleHamburger() {
  if (hamburgerShown) {
    hideHamburger();
    hamburgerShown = false;
  } else {
    showHamburger();
    hamburgerShown = true;
  }
}

function showMenu(menuName) {
  var menuId = menuName + (isMobile ? "-mobile-menu" : "-menu");
  var menuBtnId = menuName + (isMobile ? "-mobile-menu" : "-menu");
  var menuElement = document.getElementById(menuId);
  menuElement.className = menuElement.className.replace(" hidden", "");
  let children = document.querySelectorAll(".nav_menu");
  for (let i = 0; i < children.length; i++) {
    if (menuElement !== children[i]) {
      let btnId = `${children[i].id}-btn`;
      let btn = document.getElementById(btnId);
      if (btn && !children[i].classList.contains("hidden")) {
        children[i].classList.add("hidden");
        btn.lastElementChild.classList.replace("rotate-0", "-rotate-90");
      }
    }
  }
  setTimeout(function () {
    menuElement.className = menuElement.className.replace(
      "duration-200 ease-in opacity-0 -translate-y-1",
      "duration-150 ease-out opacity-1 -translate-y-0"
    );
  }, 10);
}

function hideMenu(menuName) {
  var menuId = menuName + (isMobile ? "-mobile-menu" : "-menu");
  var menuElement = document.getElementById(menuId);
  var btnId = `${menuElement.id}-btn`;
  let btn = document.getElementById(btnId);
  menuElement.className = menuElement.className.replace(
    "duration-150 ease-out opacity-1 -translate-y-0",
    "duration-200 ease-in opacity-0 -translate-y-1"
  );
  btn.lastElementChild.className = btn.lastElementChild.className.replace(
    "rotate-0",
    "-rotate-90"
  );
  if (!menuElement.classList.contains("hidden")) {
    menuElement.classList.add("hidden");
  }
}

function showHamburger() {
  document.getElementById("header-container").className = "overflow-hidden";
  document.getElementById("hamburger").className =
    "fixed mt-16 z-20 top-0 inset-x-0 transition transform origin-top-right";
  document.getElementById("hamburger-btn").className =
    "hidden lg:hidden inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out";
  document.getElementById("close-hamburger-btn").className =
    "inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out";
}

function hideHamburger() {
  document.getElementById("header-container").className = "";
  document.getElementById("hamburger").className =
    "hidden absolute z-20 top-0 inset-x-0 transition transform origin-top-right lg:hidden";
  document.getElementById("hamburger-btn").className =
    "inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out";
  document.getElementById("close-hamburger-btn").className =
    "hidden lg:hidden inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out";
  if (displayedMenu !== "") {
    hideMenu(displayedMenu);
  }
}

function toggleFilter() {
  var filterMenu = document.getElementById("filter-menu");
  if (filterMenu.className.includes("hidden")) {
    filterMenu.className = filterMenu.className.replace("hidden", " ");
  } else {
    filterMenu.className = filterMenu.className + " hidden";
  }
}
window.onload = function () {
  let elements = document.getElementsByTagName("button");
  let buttons = [...elements];

  buttons.forEach((button) => {
    button.addEventListener("click", function () {
      handleClick(button);
    });
  });

  document.getElementById("filter-btn").addEventListener('click', toggleFilter);
  document.getElementById("mobile-learn-btn").addEventListener('click', toggleMenu);
};

function openInNewTab(url) {
  window.open(url, "_blank").focus();
}

function readingTime() {
  let articles = document.querySelectorAll(".article");
  let times = document.querySelectorAll(".time");
  const wpm = 225;
  let words;
  for (var i = 0; i < articles.length; i++) {
    words = articles[i].innerText.trim().split(/\s+/).length;
    let time = Math.ceil(words / wpm);
    times[i].innerText = `${time} minute read`;
  }
}

const urls = [
  "https://gridproxy.grid.tf/stats?status=up",
  "https://gridproxy.dev.grid.tf/stats?status=up",
  "https://gridproxy.test.grid.tf/stats?status=up",
  "https://gridproxy.bknd1.ninja.tf/stats?status=standby", // will change to mainnet when release
  "https://gridproxy.dev.grid.tf/stats?status=standby",
  "https://gridproxy.test.grid.tf/stats?status=standby",
];

async function getStats() {
  try {
    const stats = await Promise.all(
      urls.map((url) => fetch(url).then((resp) => resp.json()))
    );
    return mergeStatsData(stats);
  } catch (error) {
    throw new Error(
      `Failed to retrieve data from network statistics: ${error}`
    );
  }
}

function mergeStatsData(stats) {
  const res = stats[0];
  for (let i = 1; i < stats.length; i++) {
    res.nodes += stats[i].nodes;
    res.totalCru += stats[i].totalCru;
    res.totalHru += stats[i].totalHru;
    res.totalSru += stats[i].totalSru;
    res.nodesDistribution = mergeNodeDistribution([
      res.nodesDistribution,
      stats[i].nodesDistribution,
    ]);
    res.countries = Object.keys(res.nodesDistribution).length;
  }
  let capacity = toTeraOrGiga(res.totalHru + res.totalSru);
  document.getElementById("capacity").innerHTML = capacity;
  document.getElementById("nodes").innerHTML = res.nodes;
  document.getElementById("countries").innerHTML = res.countries;
  document.getElementById("cores").innerHTML = res.totalCru
    .toString()
    .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function mergeNodeDistribution(stats) {
  const keys = new Set(stats.map((obj) => Object.keys(obj)).flat());

  return Array.from(keys).reduce((res, key) => {
    res[key] = 0;
    stats.forEach((country) => {
      res[key] += country[key] ?? 0;
    });
    return res;
  }, {});
}

function toTeraOrGiga(value) {
  const giga = 1024 ** 3;

  if (!value) return "0";

  const val = +value;
  if (val === 0 || isNaN(val)) return "0";

  if (val < giga) return val.toString();

  let gb = val / giga;

  if (gb < 1024) return `${gb.toFixed(2)} GB`;

  gb = gb / 1024;

  if (gb < 1024) return `${gb.toFixed(2)} TB`;

  gb = gb / 1024;
  return `${gb.toFixed(2)} PB`;
}

readingTime();
getStats();
document.getElementById("year").innerHTML = new Date().getFullYear();
