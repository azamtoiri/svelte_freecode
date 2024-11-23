<script>
	import CtAs from './CTAs.svelte';
	import Header from './Header.svelte';
	import SectionWrapper from './SectionWrapper.svelte';
	import Stars from './Stars.svelte';
</script>

<SectionWrapper>
	<Header />
	<div class="flex flex-1 flex-col items-center justify-center gap-10 pb-10 md:pb-14">
		<h2
			class="max-w-[1200]px mx-auto
		w-full text-center text-5xl font-semibold sm:text-7xl lg:text-8xl"
		>
			<span class="text-indigo-400">Gym</span>
			Trading
			<span class="text-slate-600 line-through">Is Hard</span><br />
			Just Got
			<span class="text-indigo-400">Easier</span>
		</h2>
		<p
			class="max-w-[1000]px mx-auto w-full text-center text-xl
		sm:text-2xl md:text-3xl"
		>
			Less thinking and more doing. We're trainer in your pocket full of <span class="italic"
				>personilez workouts, exptras, explanations, analitycs</span
			> and much much more.
		</p>
		<CtAs />
		<Stars />
	</div>
</SectionWrapper>
