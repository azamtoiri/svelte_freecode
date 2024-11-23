<script>
	import '../app.css';
	import CtAs from '../components/CTAs.svelte';
	import Footer from '../components/Footer.svelte';
	import Header from '../components/Header.svelte';
	import { openModal } from '../store';

	let { children } = $props();

	let y = $state();
	let outerHeight = $state();

	function reroute(href) {
		openModal.set(false);
		window.location.href = href;
	}
</script>

{#if $openModal}
	<div class="fixed left-0 top-0 z-50 flex h-screen w-screen flex-col bg-white p-5 px-8 md:hidden">
		<div class="flex items-center justify-between">
			<h1 class="font-semibold">
				Manaki <span class="text-indigo-400">Start</span> uP
			</h1>
			<button onclick={() => openModal.set(false)} aria-label="Close menu">
				<i class="fa-solid fa-xmark"></i>
			</button>
		</div>
		<div class="flex flex-1 flex-col gap-4">
			<button
				onclick={() => reroute('#product')}
				class="group cursor-pointer border-none p-2 text-left outline-none duration-200"
			>
				<p class="poppins text-3xl font-semibold duration-200 group-hover:pl-2">
					Product <i class="fa-solid fa-chevron-right pl-4 text-xl"></i>
				</p>
			</button>
			<button
				onclick={() => reroute('#reviews')}
				class="group cursor-pointer border-none p-2 text-left outline-none duration-200"
			>
				<p class="poppins text-3xl font-semibold duration-200 group-hover:pl-2">
					Reviews <i class="fa-solid fa-chevron-right pl-4 text-xl"></i>
				</p>
			</button>
			<button
				onclick={() => reroute('#faqs')}
				class="group cursor-pointer border-none p-2 text-left outline-none duration-200"
			>
				<p class="poppins text-3xl font-semibold duration-200 group-hover:pl-2">
					FAQs <i class="fa-solid fa-chevron-right pl-4 text-xl"></i>
				</p>
			</button>
		</div>
		<div class="flex flex-col items-center justify-center">
			<CtAs />
		</div>
	</div>
{/if}

{#if y > outerHeight}
	<div class="fadeIn fixed left-0 top-0 z-20 flex w-full bg-white px-4">
		<Header />
	</div>
{/if}

{@render children()}

<Footer />

<svelte:window bind:scrollY={y} bind:outerHeight />
