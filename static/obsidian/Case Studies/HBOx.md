HBOx is an ongoing Unity project for generating, staging, and replaying AI-driven scenes. Originally called polbots, it now provides a shared runtime for polbots, RomeBots, AppyDays, and SpaceDrivel.

##### Stack
Unity, C#, HTML, CSS, JavaScript, HTTP/JSON APIs, OpenAI, text-to-speech, Discord, Reddit, and OBS WebSocket.

##### Objective
Turn an idea into a performed scene while keeping generation, playback, and operator controls reusable across shows with different casts, prompts, and worlds.

##### Implementation
- Separate shared systems in `Assets/Core` from show-specific actors, prefabs, and scene adapters in `Assets/Scenes`. Content-focused shows reuse the core without custom scene-side C#.
- Resolve prompts from `Vault`, generate structured chats with dialogue, reactions, voice lines, and metadata, then queue and stage them through `ChatManager` and `ActorController`.
- Connect a browser operator panel built with HTML, CSS, and JavaScript to a C# HTTP server. JSON endpoints expose channel state, recent episodes, pitch and replay voting, memory diagnostics, and LLM usage.
- Integrate Reddit idea intake, Discord pitch voting and idea commands, OpenAI generation and speech, and OBS recording controls.
- Serialize chats as JSON for replay. Load shared configuration with per-channel overlays, and persist LLM usage as JSONL with model, latency, token, and cost details for budget warnings.

##### Engineering focus
The project connects a browser UI, service endpoints, external APIs, persistent data, and a real-time Unity presentation layer. Its central design is a reusable generation and playback pipeline: each show supplies its content and scene behavior while sharing orchestration and operational tooling.

##### Current state
Active development. The repository contains multiple show contexts, an operator panel, and saved-chat replay support.

[View HBOx on GitHub](https://github.com/Akrivus/hbox)

Implementation references: [runtime overview](https://github.com/Akrivus/hbox/blob/main/README.md), [HTTP server](https://github.com/Akrivus/hbox/blob/main/Assets/Core/Integrations/Sources/ServerSource.cs), and [operator panel](https://github.com/Akrivus/hbox/blob/main/Assets/StreamingAssets/index.html).
