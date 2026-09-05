<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BLACK//VOID — Classified Network</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Share+Tech+Mono&family=UnifrakturMaguntia&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    background: #020202;
    color: #bdbdbd;
    font-family: "Share Tech Mono", monospace;
    overflow-x: hidden;
}

/* Scanlines */
body::before {
    content: "";
    position: fixed;
    inset: 0;
    pointer-events: none;
    z-index: 999;
    background: repeating-linear-gradient(
        0deg,
        rgba(255,255,255,0.015),
        rgba(255,255,255,0.015) 1px,
        transparent 1px,
        transparent 4px
    );
}

/* Vignette */
body::after {
    content: "";
    position: fixed;
    inset: 0;
    pointer-events: none;
    z-index: 998;
    background: radial-gradient(
        circle,
        transparent 35%,
        rgba(0,0,0,.75) 100%
    );
}

header {
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 100;
    padding: 20px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: rgba(0,0,0,.85);
    border-bottom: 1px solid #260000;
    backdrop-filter: blur(8px);
}

.logo {
    color: #d00000;
    font-size: 22px;
    letter-spacing: 4px;
    text-shadow: 0 0 12px #ff0000;
}

nav a {
    color: #777;
    text-decoration: none;
    margin-left: 28px;
    transition: .3s;
}

nav a:hover {
    color: #ff1616;
    text-shadow: 0 0 10px red;
}

/* HERO */
.hero {
    min-height: 100vh;
    display: flex;
    align-items: center;
    padding: 130px 8% 80px;
    position: relative;
    background:
        linear-gradient(90deg, #020202 15%, rgba(20,0,0,.65)),
        radial-gradient(circle at 75% 50%, #350000 0%, #050000 30%, #020202 70%);
}

.hero-content {
    max-width: 850px;
}

.warning {
    color: #ff1b1b;
    letter-spacing: 5px;
    margin-bottom: 25px;
    animation: blink 1.5s infinite;
}

h1 {
    font-size: clamp(55px, 10vw, 125px);
    color: #eee;
    line-height: .85;
    letter-spacing: -5px;
    text-shadow:
        3px 0 red,
        -3px 0 #360000,
        0 0 35px rgba(255,0,0,.25);
}

h1 span {
    color: #a00000;
}

.subtitle {
    margin-top: 35px;
    max-width: 650px;
    color: #777;
    font-size: 17px;
    line-height: 1.8;
}

.enter {
    display: inline-block;
    margin-top: 40px;
    padding: 15px 30px;
    color: #fff;
    text-decoration: none;
    border: 1px solid #710000;
    background: #090000;
    box-shadow: 0 0 20px rgba(180,0,0,.15);
    transition: .3s;
}

.enter:hover {
    background: #7b0000;
    box-shadow: 0 0 35px red;
}

/* Sections */
section {
    padding: 100px 8%;
    border-top: 1px solid #160000;
}

.section-title {
    font-size: 32px;
    color: #ddd;
    margin-bottom: 50px;
}

.section-title::before {
    content: "// ";
    color: red;
}

/* Cards */
.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
    gap: 20px;
}

.card {
    background: linear-gradient(145deg, #090909, #030303);
    border: 1px solid #1d1d1d;
    padding: 30px;
    min-height: 190px;
    position: relative;
    overflow: hidden;
    transition: .4s;
}

.card::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 3px;
    height: 100%;
    background: #650000;
}

.card:hover {
    transform: translateY(-7px);
    border-color: #650000;
    box-shadow: 0 10px 40px rgba(100,0,0,.25);
}

.card h3 {
    color: #e00000;
    margin-bottom: 18px;
}

.card p {
    color: #666;
    line-height: 1.7;
}

/* Terminal */
.terminal {
    background: #000;
    border: 1px solid #260000;
    box-shadow: 0 0 30px rgba(100,0,0,.15);
}

.terminal-head {
    padding: 12px 18px;
    border-bottom: 1px solid #210000;
    color: #650000;
}

.terminal-body {
    padding: 25px;
    color: #777;
    line-height: 2;
}

.red {
    color: #e00000;
}

.green {
    color: #6cff6c;
}

/* Warning */
.warning-box {
    border: 1px solid #520000;
    padding: 35px;
    background: rgba(50,0,0,.12);
    text-align: center;
}

.warning-box h2 {
    color: red;
    margin-bottom: 15px;
}

.warning-box p {
    color: #666;
    line-height: 1.8;
}

/* Footer */
footer {
    padding: 50px 8%;
    text-align: center;
    color: #333;
    border-top: 1px solid #160000;
}

footer span {
    color: #800000;
}

@keyframes blink {
    0%, 45% { opacity: 1; }
    50%, 55% { opacity: .2; }
    60%, 100% { opacity: 1; }
}

/* Glitch */
.glitch {
    animation: glitch 4s infinite;
}

@keyframes glitch {
    0%, 92%, 100% {
        transform: translate(0);
    }
    93% {
        transform: translate(-3px, 2px);
    }
    94% {
        transform: translate(3px, -2px);
    }
    95% {
        transform: translate(-1px, 1px);
    }
}

@media(max-width:700px) {
    header {
        padding: 16px 5%;
    }

    nav {
        display: none;
    }

    .hero {
        padding-left: 6%;
        padding-right: 6%;
    }

    section {
        padding: 70px 6%;
    }
}
</style>
</head>

<body>

<header>
    <div class="logo">BLACK//VOID</div>

    <nav>
        <a href="#terminal">TERMINAL</a>
        <a href="#archives">ARCHIVES</a>
        <a href="#warning">WARNING</a>
    </nav>
</header>

<main>

<section class="hero">

    <div class="hero-content">

        <div class="warning">
            [ CONNECTION ESTABLISHED ]
        </div>

        <h1 class="glitch">
            ENTER<br>
            THE <span>VOID</span>
        </h1>

        <p class="subtitle">
            You have reached a fictional underground network buried beneath
            forgotten servers. There are no maps here. No names. No way to
            know who is watching.
        </p>

        <a href="#terminal" class="enter">
            [ ENTER NETWORK
