<script>
	let { reviewItem, left, index } = $props();
</script>

<div
	class={'relative mx-auto flex w-full max-w-[500px] flex-col gap-2 ' +
		(left
			? index % 2 === 1
				? 'pointer-events-none hidden max-h-[40px] overflow-hidden opacity-0 md:flex'
				: ' '
			: index % 2 === 0
				? 'pointer-events-none hidden max-h-[40px] overflow-hidden opacity-0 md:flex'
				: ' ')}
>
	<div class="relative flex">
		<div
			class={'reounded-full absolute top-0 hidden aspect-square h-4 place-items-center bg-white md:grid ' +
				(index % 2 === 0 ? ' right-0 -mr-8 translate-x-1/2' : ' left-0 -ml-8 -translate-x-1/2')}
		>
			<div class="aspect-square h-2 rounded-full bg-slate-950"></div>
			>
		</div>
		<div class="flex items-center gap-2">
			<i class="fa-solid fa-user"></i>
			<h3 class="text-lg sm:text-xl md:text-2xl">
				{reviewItem.name}
			</h3>
		</div>
	</div>
	<div class="mb-4 mr-auto mt-2 h-[1.5px] w-1/4 bg-slate-950"></div>
	<div class="mb-4 flex flex-wrap items-center gap-2 text-xs sm:text-sm">
		{#each reviewItem.features as keywork}
			<div
				class="rounded-md border border-solid border-indigo-400 bg-indigo-50 p-1 py-0.5 text-indigo-400"
			>
				<p>{keywork}</p>
			</div>
		{/each}
	</div>
	<p>{reviewItem.review}</p>
</div>
