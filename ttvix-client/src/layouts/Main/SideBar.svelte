<script lang="ts">
    import DashboardIcon from "../../assets/icons/DashboardIcon.svelte";
    import BellIcon from "../../assets/icons/BellIcon.svelte";
    import MsgsIcon from "../../assets/icons/MsgsIcon.svelte";

    import { translate as t } from "../../i18n/translate";
</script>

<div class="px-8">
    <div class="h-16 w-full flex items-center">
        <h1>TTVix</h1>
    </div>
    <ul class="mt-12">
        <li
            class="flex w-full justify-between text-gray-300 cursor-pointer items-center mb-6"
        >
            <a
                href="#"
                class="flex items-center focus:outline-none focus:ring-2 focus:ring-white"
            >
                <DashboardIcon />
                <span class="text-sm ml-2">{t("layout.dashboard")}</span>
            </a>
            <div
                class="py-1 px-3 bg-gray-600 rounded text-gray-300 flex items-center justify-center text-xs"
            >
                5
            </div>
        </li>
        <li
            class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6"
        >
            <a
                href="#"
                class="flex items-center focus:outline-none focus:ring-2 focus:ring-white"
            >
                <span class="text-sm ml-2">{t("layout.products")}</span>
            </a>
            <div
                class="py-1 px-3 bg-gray-600 rounded text-gray-300 flex items-center justify-center text-xs"
            >
                8
            </div>
        </li>
    </ul>
</div>
<div class="px-8 border-t border-gray-700">
    <ul class="w-full flex items-center justify-between bg-gray-800">
        <li class="cursor-pointer text-white pt-5 pb-3">
            <button
                aria-label="show notifications"
                class="focus:outline-none focus:ring-2 rounded focus:ring-gray-300"
            >
                <BellIcon />
            </button>
        </li>
        <li class="cursor-pointer text-white pt-5 pb-3">
            <button
                aria-label="open chats"
                class="focus:outline-none focus:ring-2 rounded focus:ring-gray-300"
            >
                <MsgsIcon />
            </button>
        </li>
    </ul>
</div>
