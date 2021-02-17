<template>
  <!--<div>
    <div class="course">
      <h1>Atelier paille</h1>
      <article class="tuto">
        <section class="informations">
          <ul>
            <li>Durée du cours : 25m</li>
            <li>Coût en matériel : 15€</li>
          </ul>
          <div class="media-image" style></div>
        </section>

        <section class="matériel">
          <h2>Matériel</h2>
          <ul>
            <li>Lorem, ipsum dolor.</li>
            <li>Mollitia, provident numquam.</li>
            <li>Excepturi, quae earum?</li>
          </ul>
        </section>
      </article>
    </div>

    <div class="course">
      <h1>Atelier paille</h1>
      <article class="tuto">
        <section class="informations">
          <ul>
            <li>Durée du cours : 25m</li>
            <li>Coût en matériel : 15€</li>
          </ul>
          <div class="media-image" style></div>
        </section>

        <section class="matériel">
          <h2>Matériel</h2>
          <ul>
            <li>Lorem, ipsum dolor.</li>
            <li>Mollitia, provident numquam.</li>
            <li>Excepturi, quae earum?</li>
          </ul>
        </section>
      </article>
    </div>

    <div class="course">
      <h1>Atelier paille</h1>
      <article class="tuto">
        <section class="informations">
          <ul>
            <li>Durée du cours : 25m</li>
            <li>Coût en matériel : 15€</li>
          </ul>
          <div class="media-image" style></div>
        </section>

        <section class="matériel">
          <h2>Matériel</h2>
          <ul>
            <li>Lorem, ipsum dolor.</li>
            <li>Mollitia, provident numquam.</li>
            <li>Excepturi, quae earum?</li>
          </ul>
        </section>
      </article>
    </div>
  </div> -->


    <main class="main-area">
        
        <div class="centered">

            <section class="cards">
                
                <article class="card">
                    <a href="#">
                        <picture class="thumbnail">
                            <img src="../assets/images/feutrenb.jpg" alt="A banana that looks like a bird">
                        </picture>
                        <div class="card-content">

                            <h2>Vacation Image 01</h2>
                            <p>TUX re-inventing the wheel, and move the needle. Feature creep dogpile that but diversify kpis but market-facing.</p>
                        </div><!-- .card-content -->
                    </a>
                </article><!-- .card -->

                <article class="card">
                    <a href="#">
                        <picture class="thumbnail">
                            <img src="../assets/images/feutrenb.jpg" alt="A banana that looks like a bird">
                        </picture>
                        <div class="card-content">

                            <h2>Vacation Image 01</h2>
                            <p>TUX re-inventing the wheel, and move the needle. Feature creep dogpile that but diversify kpis but market-facing.</p>
                        </div><!-- .card-content -->
                    </a>
                </article><!-- .card -->

                <article class="card">
                    <a href="#">
                        <picture class="thumbnail">
                            <img src="../assets/images/feutrenb.jpg" alt="A banana that looks like a bird">
                        </picture>
                        <div class="card-content">

                            <h2>Vacation Image 01</h2>
                            <p>TUX re-inventing the wheel, and move the needle. Feature creep dogpile that but diversify kpis but market-facing.</p>
                        </div><!-- .card-content -->
                    </a>
                </article><!-- .card -->

                <article class="card">
                    <a href="#">
                        <picture class="thumbnail">
                            <img src="../assets/images/feutrenb.jpg" alt="A banana that looks like a bird">
                        </picture>
                        <div class="card-content">

                            <h2>Vacation Image 01</h2>
                            <p>TUX re-inventing the wheel, and move the needle. Feature creep dogpile that but diversify kpis but market-facing.</p>
                        </div><!-- .card-content -->
                    </a>
                </article><!-- .card -->

               <article class="card">
                    <a href="#">
                        <picture class="thumbnail">
                            <img src="../assets/images/feutrenb.jpg" alt="A banana that looks like a bird">
                        </picture>
                        <div class="card-content">

                            <h2>Vacation Image 01</h2>
                            <p>TUX re-inventing the wheel, and move the needle. Feature creep dogpile that but diversify kpis but market-facing.</p>
                        </div><!-- .card-content -->
                    </a>
                </article><!-- .card -->

            </section><!-- .cards -->
           
        </div><!-- .centered -->
        
    </main>
      
      
</template>

<script>
export default {
  name: "Course"
};
</script>

<style scoped>


body {
  background: hsl(0, 0%, 90%);
  
}

/*--------------------------------------------------------------
Typography
--------------------------------------------------------------*/
body,
button,
input,
select,
textarea {
	color: #404040;
	font-family: 'Comfortaa', Arial, sans-serif;
	font-size: 18px;
	line-height: 1.5;
}

h1,
h2,
h3,
h4,
h5,
h6 {
	clear: both;
  font-family: 'Patua One', serif;
  letter-spacing: 2px;
}

h2 {
  font-size: 1rem;
  color: #007489;
}

p {
	margin-bottom: 1.5em;
  color: #898989;
}

b,
strong {
	font-weight: bold;
}

dfn,
cite,
em,
i {
	font-style: italic;
}

blockquote {
	margin: 0 1.5em;
}

address {
	margin: 0 0 1.5em;
}

pre {
	background: #eee;
	font-family: "Courier 10 Pitch", Courier, monospace;
	font-size: 15px;
	font-size: 1.5rem;
	line-height: 1.6;
	margin-bottom: 1.6em;
	max-width: 100%;
	overflow: auto;
	padding: 1.6em;
}

code,
kbd,
tt,
var {
	font: 15px Monaco, Consolas, "Andale Mono", "DejaVu Sans Mono", monospace;
}

abbr,
acronym {
	border-bottom: 1px dotted #666;
	cursor: help;
}

mark,
ins {
	background: #fff9c0;
	text-decoration: none;
}

sup,
sub {
	font-size: 75%;
	height: 0;
	line-height: 0;
	position: relative;
	vertical-align: baseline;
}

sup {
	bottom: 1ex;
}

sub {
	top: .5ex;
}

small {
	font-size: 75%;
}

big {
	font-size: 125%;
}

.masthead {
	background-color: #6f857d;
}

.masthead p, .masthead p a {
  color: white;
}

.site-title {
	color: white;
}

img {
	display: block;
	border: 0;
	width: 100%;
	height: auto;
}


.card {
  margin-top: 5px;
	background: rgb(255, 254, 254);
  margin-bottom: 2em;	
  box-shadow: 3px 3px 8px hsla(0, 0%, 27%, 0.658);
  border-radius: 1%;
  
}

.card:hover {
  transform: scale(1.05);
  transition-duration: 0.3s;
  transition-timing-function: linear;
}

.card a {
	color: black;
	text-decoration: none;
}

.card a:hover {
	box-shadow: 3px 3px 8px hsl(0, 0%, 30%, 0.800);
}

.card-content {
	padding: 1.4em;
}

.card-content h2 {
	margin-top: 0;
	margin-bottom: .5em;
	font-weight: bold;
}

.card-content p {
	font-size: 80%;
}

/* Flexbox stuff */

@media screen and (min-width: 40em) {
    .cards {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .card {
        flex: 0 1 calc(50% - 1em);
    }
}

@media screen and (min-width: 60em) {

    .card {
        flex: 0 1 calc(25% - 1em);
    }
}


   
</style>