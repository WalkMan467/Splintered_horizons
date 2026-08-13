

execute \
    if function bossfight:chapter_2/elekiel_phase_2/skills/2/cage/imprison/tp/is_cage run \
return run \
function bossfight:chapter_2/elekiel_phase_2/skills/2/cage/reset_motion

execute \
    positioned ^ ^ ^0.5 run \
function bossfight:chapter_2/elekiel_phase_2/skills/2/cage/imprison/tp/loop