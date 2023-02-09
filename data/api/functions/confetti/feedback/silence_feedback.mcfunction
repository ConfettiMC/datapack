execute store result score #SendCommandFB confetti_db run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function confetti:handle/api/feedback/restore_feedback_state 2t
