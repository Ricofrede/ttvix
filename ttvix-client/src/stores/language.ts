import { writable } from "svelte/store";

type Language = string

export const language = writable<Language>('en')