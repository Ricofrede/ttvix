<script lang="ts">
    import CloseIcon from "../../assets/icons/CloseIcon.svelte";
    import FiltersIcon from "../../assets/icons/FiltersIcon.svelte";

    import SideBar from "./SideBar.svelte";

    let sideBarOpen: boolean = false;
    $: sideBarStyle = sideBarOpen ? "translateX(0px)" : "translateX(-260px)";

    function sidebarHandler(flag: boolean) {
        sideBarOpen = flag;
    }
</script>

<div class="w-full h-full">
    <dh-component>
        <div class="flex flex-no-wrap">
            <div
                style="min-height: 716px"
                class="w-64 h-screen absolute sm:relative bg-gray-800 shadow flex-col justify-between hidden sm:flex"
            >
                <SideBar />
            </div>
            <div
                class="w-64 z-40 h-screen absolute bg-gray-800 shadow md:h-full flex-col justify-between sm:hidden transition duration-150 ease-in-out"
                id="mobile-nav"
                style={`transform: ${sideBarStyle};`}
            >
                <button
                    aria-label="toggle sidebar"
                    id="openSideBar"
                    class="h-10 w-10 bg-gray-800 absolute right-0 mt-16 -mr-10 flex items-center shadow rounded-tr rounded-br justify-center cursor-pointer focus:outline-none focus:ring-2 focus:ring-offset-2 rounded focus:ring-gray-800"
                    class:hidden={sideBarOpen}
                    on:click={() => sidebarHandler(true)}
                >
                    <FiltersIcon />
                </button>
                <button
                    aria-label="Close sidebar"
                    id="closeSideBar"
                    class="hidden h-10 w-10 bg-gray-800 absolute right-0 mt-16 -mr-10 flex items-center shadow rounded-tr rounded-br justify-center cursor-pointer text-white"
                    class:hidden={!sideBarOpen}
                    on:click={() => sidebarHandler(false)}
                >
                    <CloseIcon />
                </button>
                <SideBar />
            </div>
            <!-- Sidebar ends -->
            <!-- Remove class [ h-64 ] when adding a card block -->
            <div class="container mx-auto py-10 h-64 md:w-4/5 w-11/12 px-6">
                <!-- Remove class [ border-dashed border-2 border-gray-300 ] to remove dotted border -->
                <div
                    class="w-full h-full rounded border-dashed border-2 border-gray-300"
                >
                    <slot />
                </div>
            </div>
        </div>
    </dh-component>
</div>
