<script>
	import { openModal } from '../store';
</script>

<header class="relative z-20 flex flex-col">
	<div class="mx-auto flex w-full max-w-[1400px] items-center justify-between p-4 py-6">
		<a href="/">
			<h1 class="font-semibold">
				Manaki <span class="text-indigo-400">Start</span> uP
			</h1>
		</a>
		<button onclick={() => openModal.set(true)} aria-label="Open menu">
			<i class="fa-solid fa-bars"></i>
		</button>
		<nav class="hidden items-center gap-4 md:flex lg:gap-6">
			<a
				href="#product"
				class="cursor-pointer duration-200
			hover:text-indigo-400">Product</a
			>
			<a
				href="#reviews"
				class="cursor-pointer duration-200
			hover:text-indigo-400">Reviews</a
			>
			<a
				href="#faqs"
				class="cursor-pointer duration-200
			hover:text-indigo-400">FAQs</a
			>
			<button class="specialBtn">
				<p>Start free today</p>
			</button>
		</nav>
	</div>
</header>
