# Validation and Errors

**MUST** Explain what is wrong and how to recover. Associate the message with the relevant field/control. Do not erase valid user input.

**DEFAULT** Validate at a moment that helps rather than interrupts: on submit for many forms; after a meaningful field interaction when early feedback prevents costly work. Do not show an error while the user is still entering an incomplete value unless immediate validation is essential.

**DEFAULT** Put a concise error near the source and, for long/multi-error forms, provide a summary that links users to problems.

**MUST** Do not rely on color alone.

**AVOID** generic "Invalid input", premature red states, duplicate/conflicting messages, and disabling submit without explaining unmet requirements.
