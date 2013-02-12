I18n = I18n or {}
I18n.translations =
  en:
    date:
      formats:
        default: "%Y-%m-%d"
        short: "%b %d"
        long: "%B %d, %Y"

      day_names: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
      abbr_day_names: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
      month_names: [null, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
      abbr_month_names: [null, "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
      order: ["year", "month", "day"]

    time:
      formats:
        default: "%a, %d %b %Y %H:%M:%S %z"
        short: "%d %b %H:%M"
        long: "%B %d, %Y %H:%M"
        note_date: "%b %d, %Y"

      am: "am"
      pm: "pm"

    support:
      array:
        words_connector: ", "
        two_words_connector: " and "
        last_word_connector: ", and "

    errors:
      format: "%{attribute} %{message}"
      messages:
        inclusion: "is not included in the list"
        exclusion: "is reserved"
        invalid: "is invalid"
        confirmation: "doesn't match confirmation"
        accepted: "must be accepted"
        empty: "can't be empty"
        blank: "can't be blank"
        too_long: "is too long (maximum is %{count} characters)"
        too_short: "is too short (minimum is %{count} characters)"
        wrong_length: "is the wrong length (should be %{count} characters)"
        not_a_number: "is not a number"
        not_an_integer: "must be an integer"
        greater_than: "must be greater than %{count}"
        greater_than_or_equal_to: "must be greater than or equal to %{count}"
        equal_to: "must be equal to %{count}"
        less_than: "must be less than %{count}"
        less_than_or_equal_to: "must be less than or equal to %{count}"
        odd: "must be odd"
        even: "must be even"
        expired: "has expired, please request a new one"
        not_found: "not found"
        already_confirmed: "was already confirmed"
        not_locked: "was not locked"
        not_saved:
          one: "1 error prohibited this %{resource} from being saved:"
          other: "%{count} errors prohibited this %{resource} from being saved:"

        confirmation_period_expired: "needs to be confirmed within %{period}, please request a new one"

    activerecord:
      errors:
        messages:
          taken: "has already been taken"
          record_invalid: "Validation failed: %{errors}"

      models:
        user:
          one: "Member"
          other: "Members"

        project:
          one: "Project"
          other: "Projects"

        story:
          one: "Story"
          other: "Stories"

      attributes:
        note:
          note: "Note"

        project:
          name: "Name"
          point_scale: "Point scale"
          start_date: "Start date"
          iteration_start_day: "Iteration start day"
          iteration_length: "Iteration length"
          default_velocity: "Default velocity"

        story:
          title: "Title"
          description: "Description"
          estimate: "Estimate"
          story_type: "Story type"
          state: "State"
          accepted_at: "Accepted at"
          position: "Position"
          labels: "Labels"
          requested_by: "Requested by"
          owned_by: "Owned by"

    number:
      format:
        separator: "."
        delimiter: ","
        precision: 3
        significant: false
        strip_insignificant_zeros: false

      currency:
        format:
          format: "%u%n"
          unit: "$"
          separator: "."
          delimiter: ","
          precision: 2
          significant: false
          strip_insignificant_zeros: false

      percentage:
        format:
          delimiter: ""

      precision:
        format:
          delimiter: ""

      human:
        format:
          delimiter: ""
          precision: 3
          significant: true
          strip_insignificant_zeros: true

        storage_units:
          format: "%n %u"
          units:
            byte:
              one: "Byte"
              other: "Bytes"

            kb: "KB"
            mb: "MB"
            gb: "GB"
            tb: "TB"

        decimal_units:
          format: "%n %u"
          units:
            unit: ""
            thousand: "Thousand"
            million: "Million"
            billion: "Billion"
            trillion: "Trillion"
            quadrillion: "Quadrillion"

    datetime:
      distance_in_words:
        half_a_minute: "half a minute"
        less_than_x_seconds:
          one: "less than 1 second"
          other: "less than %{count} seconds"

        x_seconds:
          one: "1 second"
          other: "%{count} seconds"

        less_than_x_minutes:
          one: "less than a minute"
          other: "less than %{count} minutes"

        x_minutes:
          one: "1 minute"
          other: "%{count} minutes"

        about_x_hours:
          one: "about 1 hour"
          other: "about %{count} hours"

        x_days:
          one: "1 day"
          other: "%{count} days"

        about_x_months:
          one: "about 1 month"
          other: "about %{count} months"

        x_months:
          one: "1 month"
          other: "%{count} months"

        about_x_years:
          one: "about 1 year"
          other: "about %{count} years"

        over_x_years:
          one: "over 1 year"
          other: "over %{count} years"

        almost_x_years:
          one: "almost 1 year"
          other: "almost %{count} years"

      prompts:
        year: "Year"
        month: "Month"
        day: "Day"
        hour: "Hour"
        minute: "Minute"
        second: "Seconds"

    helpers:
      select:
        prompt: "Please select"

      submit:
        create: "Create %{model}"
        update: "Update %{model}"
        submit: "Save %{model}"

      button:
        create: "Create %{model}"
        update: "Update %{model}"
        submit: "Save %{model}"

    devise:
      failure:
        already_authenticated: "You are already signed in."
        unauthenticated: "You need to sign in or sign up before continuing."
        unconfirmed: "You have to confirm your account before continuing."
        locked: "Your account is locked."
        not_found_in_database: "Invalid email or password."
        invalid: "Invalid email or password."
        invalid_token: "Invalid authentication token."
        timeout: "Your session expired, please sign in again to continue."
        inactive: "Your account was not activated yet."

      sessions:
        signed_in: "Signed in successfully."
        signed_out: "Signed out successfully."

      passwords:
        send_instructions: "You will receive an email with instructions about how to reset your password in a few minutes."
        updated: "Your password was changed successfully. You are now signed in."
        updated_not_active: "Your password was changed successfully."
        send_paranoid_instructions: "If your email address exists in our database, you will receive a password recovery link at your email address in a few minutes."
        no_token: "You can't access this page without coming from a password reset email. If you do come from a password reset email, please make sure you used the full URL provided."

      confirmations:
        send_instructions: "You will receive an email with instructions about how to confirm your account in a few minutes."
        send_paranoid_instructions: "If your email address exists in our database, you will receive an email with instructions about how to confirm your account in a few minutes."
        confirmed: "Your account was successfully confirmed. Please set a password to complete the sign up process."
        invalid_token: "Invalid confirmation token."

      registrations:
        signed_up: "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."
        signed_up_but_unconfirmed: "You have signed up successfully. A confirmation was sent to your e-mail. Please follow the contained instructions to activate your account."
        signed_up_but_inactive: "You have signed up successfully. However, we could not sign you in because your account is not yet activated."
        signed_up_but_locked: "You have signed up successfully. However, we could not sign you in because your account is locked."
        updated: "You updated your account successfully."
        update_needs_confirmation: "You updated your account successfully, but we need to verify your new email address. Please check your email and click on the confirm link to finalize confirming your new email address."
        destroyed: "Bye! Your account was successfully cancelled. We hope to see you again soon."

      unlocks:
        send_instructions: "You will receive an email with instructions about how to unlock your account in a few minutes."
        unlocked: "Your account was successfully unlocked. You are now signed in."
        send_paranoid_instructions: "If your account exists, you will receive an email with instructions about how to unlock it in a few minutes."

      omniauth_callbacks:
        success: "Successfully authenticated from %{kind} account."
        failure: "Could not authenticate you from %{kind} because \"%{reason}\"."

      mailer:
        confirmation_instructions:
          subject: "Confirmation instructions"

        reset_password_instructions:
          subject: "Reset password instructions"

        unlock_instructions:
          subject: "Unlock Instructions"

    fulcrum: "Fulcrum"
    "log out": "Log out"
    "log in": "Log in"
    "sign up": "Sign up"
    edit: "Edit"
    delete: "Delete"
    back: "Back"
    import: "Import"
    export: "Export"
    revert: "Revert"
    apply: "Apply"
    velocity: "Velocity"
    notes: "Notes"
    close: "Close"
    points: "Points"
    saving: "Saving ..."
    expand: "Expand"
    "author unknown": "Author Unknown"
    "add story": "Add story"
    "save error": "Save error"
    "override velocity": "Override velocity"
    "story title": "Story title"
    "requested on date": "Requested on {{date}}"
    "requested by user on date": "Requested by {{user}} on {{date}}"
    "imported n stories":
      one: "Imported 1 story"
      other: "Importer %{count} stories"

    "n stories failed to import":
      one: "1 story failed to import"
      other: "%{count} stories failed to import"

    "n weeks":
      one: "1 week"
      other: "%{count} weeks"

    projects:
      "new project": "New Project"
      "edit project": "Edit Project"
      "project properties": "Project Properties"
      "project was successfully created": "Project was successfully created."
      "project was successfully updated": "Project was successfully updated."
      index:
        "listing projects": "Listing Projects"
        "are you sure you want to delete this project": "Are you sure you want to delete this project?  This action cannot be undone."
        "the iteration starts on x with length of x weeks":
          one: "Iterations start on %{day} with a length of 1 week"
          other: "Iterations start on %{day} with a length of %{count} weeks"

      show:
        done: "Done"
        in_progress: "In Progress"
        backlog: "Backlog"
        icebox: "Chilly Bin"

    registrations:
      edit:
        leave_blank_if_you_dont_want_to_change_it: "Leave blank if you don't want to change it"
        notify_me_when_my_stories_are: "Notify me when my stories are"
        we_need_your_current_password_to_confirm_your_changes: "We need your current password to confirm your changes."

  de:
    fulcrum: "Fulcrum"
    "log out": "Abmelden"
    "log in": "Anmelden"
    "sign up": "Registrieren"
    edit: "Barbeiten"
    delete: "Löschen"
    back: "Zurück"
    import: "Importieren"
    export: "Exportieren"
    revert: "Zurücksetzen"
    apply: "Anwenden"
    velocity: "Geschwindigkeit"
    notes: "Notizen"
    close: "Schliessen"
    points: "Punkte"
    saving: "Speichern ..."
    expand: "Expandieren"
    "author unknown": "Unbekanter Autor"
    "add story": "Story Hinzufügen"
    "save error": "Speicher Fehler"
    "override velocity": "Geschwindigkeit Erzwingen"
    "story title": "Titel"
    "requested on date": "Beantragt am {{date}}"
    "requested by user on date": "Beantragt bei {{user}} am {{date}}"
    "imported n stories":
      one: "1 Story Importiert"
      other: "%{count} Stories Importiert"

    "n stories failed to import":
      one: "1 Story scheiterte beim Import"
      other: "%{count} Stories scheiterte beim Import"

    "n weeks":
      one: "1 Woche"
      other: "%{count} Wochen"

    activerecord:
      models:
        user:
          one: "Mitglied"
          other: "Mitglieder"

        project:
          one: "Projekt"
          other: "Projekte"

        story:
          one: "Story"
          other: "Stories"

      attributes:
        note:
          note: "Notiz"

        project:
          name: "Name"
          point_scale: "Punkte Scala"
          start_date: "Startdatum"
          iteration_start_day: "Iterationsstarttag"
          iteration_length: "Iterationslänge"
          default_velocity: "Standard Geschwindigkeit"

        story:
          title: "Titel"
          description: "Beschreibung"
          estimate: "Schätzung"
          story_type: "Story-Typ"
          state: "Zustand"
          accepted_at: "Angenommen am"
          position: "Position"
          labels: "Labels"
          requested_by: "Beantragt von"
          owned_by: "Besitzt von"

    projects:
      "new project": "Neues Projekt"
      "edit project": "Projekt Bearbeiten"
      "project properties": "Projekt Eigentschaften"
      "project was successfully created": "Projekt wurde erfolgreich erzeugt."
      "project was successfully updated": "Projekt wurde erfolgreich aktualisiert."
      index:
        "listing projects": "Listing Projects"
        "are you sure you want to delete this project": "Sind Sie sicher das sie das Projekt löschen wollen? Diese Aktion kann nicht rückgänig gemacht werden."
        "the iteration starts on x with length of x weeks":
          one: "Iteration fängt am %{day} mit der länge einer Woche"
          other: "Iteration fängt am %{day} mit der länge von %{count} Wochen"

      show:
        done: "Fertig"
        in_progress: "Laufend"
        backlog: "Rückstand"
        icebox: "Kalte Kiste"

    registrations:
      edit:
        leave_blank_if_you_dont_want_to_change_it: "Lassen Sie es leer wenn Sie es nicht barbeiten wollen."
        notify_me_when_my_stories_are: "Benachrichtige mich wenn meine Stories"
        we_need_your_current_password_to_confirm_your_changes: "Wir brauchen dein aktuelles Passwort um die Änderungen zu bestätigen."

    time:
      formats:
        note_date: "%b %d, %Y"

    errors:
      messages:
        not_found: "nicht gefunden"
        already_confirmed: "wurde bereits bestätigt"
        not_locked: "war nicht gesperrt"

    devise:
      failure:
        unauthenticated: "Sie müssen sich anmelden oder registrieren, bevor Sie fortfahren können."
        unconfirmed: "Sie müssen ihr Konto bestätigen bevor sie fortfahren können."
        locked: "Ihr Konto wurde gesperrt."
        invalid: "Ungültige E-Mail oder ungültiges Passwort."
        invalid_token: "Ungültige Authentifizierungs-Token."
        timeout: "Ihre Sitzung ist abgelaufen, bitte melden Sie sich erneut, um fortzufahren."
        inactive: "Ihr Konto wurde noch nicht aktiviert."

      sessions:
        signed_in: "Erfolgreich angemeldet."
        signed_out: "Erfolgreich abgemeldet."

      passwords:
        send_instructions: "Sie erhalten eine E-Mail mit Anweisungen, wie Sie Ihr Passwort in Kürze zurücksetzen können."
        updated: "Ihr Passwort wurde erfolgreich geändert. Sie sind jetzt angemeldet."

      confirmations:
        send_instructions: "Sie erhalten eine E-Mail mit Anweisungen, wie sie ihr Konto bestätigen können."
        confirmed: "Ihr Konto wurde erfolgreich bestätigt. Sie sind jetzt angemeldet."

      registrations:
        signed_up: "Sie haben sich erfolgreich angemeldet. Wenn aktiviert wurde eine Betätigung per E-Mail geschickt."
        updated: "Ihr Konto wurde erfolgreich aktiviert."
        destroyed: "Tschüss! Ihr Konto wurde erfolgreich gelöscht. Wir hoffen sie bald wieder zu sehen."

      unlocks:
        send_instructions: "Sie erhalten eine E-Mail mit Anweisungen, wie sie ihr Konto entsperren können."
        unlocked: "Ihr Konto wurde erfolgreich entsperrt. Sie sind jetzt angemeldet."

      mailer:
        confirmation_instructions:
          subject: "Bestätigungs-Anweisungen"

        reset_password_instructions:
          subject: "Passwortrücksetz-Anweisungen"

        unlock_instructions:
          subject: "Entsper-Anweisungen"

  el:
    errors:
      messages:
        expired: "έχει λήξει, παρακαλώ ζητείστε καινούργιο"
        not_found: "δεν βρέθηκε"
        already_confirmed: "έχει ήδη ενεργοποιηθεί, παρακαλώ δοκιμάστε να συνδεθείτε"
        not_locked: "δεν είναι κλειδωμένος"
        not_saved:
          one: "1 λάθος εμπόδισε αυτό το %{resource} να αποθηκευθεί:"
          other: "%{count} λάθη εμπόδισαν αυτό το %{resource} να αποθηκευθεί."

    devise:
      failure:
        already_authenticated: "Είστε ήδη συνδεδεμένος."
        unauthenticated: "Πρέπει να συνδεθείτε για να συνεχίσετε."
        unconfirmed: "Πρέπει να επιβεβαιώσετε το λογαριασμό σας για να συνεχίσετε."
        locked: "Ο λογαριασμός σας είναι κλειδωμένος."
        invalid: "Άκυρη ηλ. διεύθυνση ή κωδικός."
        invalid_token: "Άκυρο σύμβολο αυθεντικοποίησης."
        timeout: "Η συνεδρεία σας έχει λήξη, παρακαλώ επανασυνδεθείτε για να συνεχίσετε."
        inactive: "Ο λογαριασμός σας δεν έχει ενεργοποιηθεί."

      sessions:
        signed_in: "Επιτυχής σύνδεση."
        signed_out: "Επιτυχής αποσύνδεση."

      passwords:
        send_instructions: "You will receive an email with instructions about how to reset your password in a few minutes."
        updated: "Your password was changed successfully. You are now signed in."

      confirmations:
        send_instructions: "You will receive an email with instructions about how to confirm your account in a few minutes."
        confirmed: "Your account was successfully confirmed. You are now signed in."

      registrations:
        signed_up: "Καλωσήρθατε! Έχετε συνδεθεί με επιτυχία."
        inactive_signed_up: "Έχετε συνδεθεί με επιτυχία. Δυστυχώς όμως, δεν μπορείτε να συνεχίσετε γιατί %{reason}."
        updated: "Οι αλλαγές στο λογαριασμό σας αποθηκεύτηκαν με επιτυχία."
        destroyed: "Γειά χαρά! Ο λογαριασμός σας ακυρώθηκε με επιτυχία."

      unlocks:
        send_instructions: "You will receive an email with instructions about how to unlock your account in a few minutes."
        unlocked: "Your account was successfully unlocked. You are now signed in."

      omniauth_callbacks:
        success: "Successfully authorized from %{kind} account."
        failure: "Could not authorize you from %{kind} because \"%{reason}\"."

      mailer:
        confirmation_instructions:
          subject: "Οδηγίες ενεργοποίησης"

        reset_password_instructions:
          subject: "Οδηγίες ανάκτησης κωδικού"

        unlock_instructions:
          subject: "Οδηγίες ξεκλειδώματος λογαριασμού"

    time:
      formats:
        note_date: "%d %b, %Y"
        date:
          abbr_day_names: ["Κυρ", "Δευ", "Τρι", "Τετ", "Πεμ", "Παρ", "Σαβ"]
          abbr_month_names: [null, "Ιαν.", "Φεβ.", "Μαρ.", "Απρ.", "Μαι.", "Ιουν.", "Ιούλ.", "Αυγ.", "Σεπ.", "Οκτ.", "Νοε.", "Δεκ."]
          day_names: ["Κυριακή", "Δευτέρα", "Τρίτη", "Τετάρτη", "Πέμπτη", "Παρασκευή", "Σάββατο"]
          formats:
            default: "%d/%m/%Y"
            long: "%e %B %Y"
            short: "%d %b"

          month_names: [null, "Ιανουάριος", "Φεβρουάριος", "Μάρτιος", "Απρίλιος", "Μάιος", "Ιούνιος", "Ιούλιος", "Αύγουστος", "Σεπτέμβριος", "Οκτώβριος", "Νοέμβριος", "Δεκέμβριος"]
          order: ["day", "month", "year"]

        datetime:
          distance_in_words:
            about_x_hours:
              one: "περίπου μία ώρα"
              other: "περίπου %{count} ώρες"

            about_x_months:
              one: "περίπου ένα μήνα"
              other: "περίπου %{count} μήνες"

            about_x_years:
              one: "περίπου ένα χρόνο"
              other: "περίπου %{count} χρόνια"

            almost_x_years:
              one: "σχεδόν ένα χρόνο"
              other: "σχεδόν %{count} χρόνια"

            half_a_minute: "μισό λεπτό"
            less_than_x_minutes:
              one: "λιγότερο από ένα λεπτό"
              other: "λιγότερο από %{count} λεπτά"

            less_than_x_seconds:
              one: "λιγότερο από ένα δευτερόλεπτο"
              other: "λιγότερο από %{count} δευτερόλεπτα"

            over_x_years:
              one: "πάνω από ένα χρόνο"
              other: "πάνω από %{count} χρόνια"

            x_days:
              one: "1 μέρα"
              other: "%{count} μέρες"

            x_minutes:
              one: "1 λεπτό"
              other: "%{count} λεπτά"

            x_months:
              one: "1 μήνα"
              other: "%{count} μήνες"

            x_seconds:
              one: "1 δευτερόλεπτο"
              other: "%{count} δευτερόλεπτα"

          prompts:
            day: "Ημέρα"
            hour: "Ώρα"
            minute: "Λεπτό"
            month: "Μήνας"
            second: "Δευτερόλεπτο"
            year: "Έτος"

        errors:
          format: "%{attribute} %{message}"
          messages:
            accepted: "πρέπει να είναι αποδεκτό"
            blank: "δεν πρέπει να είναι κενό"
            confirmation: "δεν ταιριάζει με την επικύρωση"
            empty: "δεν πρέπει να είναι άδειο"
            equal_to: "πρέπει να είναι ίσο με %{count}"
            even: "πρέπει να είναι άρτιος"
            exclusion: "είναι δεσμευμένο"
            greater_than: "πρέπει να είναι μεγαλύτερο από %{count}"
            greater_than_or_equal_to: "πρέπει να είναι μεγαλύτερο ή ίσο με %{count}"
            inclusion: "δεν συμπεριλαμβάνεται στη λίστα"
            invalid: "είναι άκυρο"
            less_than: "πρέπει να είναι λιγότερο από %{count}"
            less_than_or_equal_to: "πρέπει να είναι λιγότερο ή ίσο με %{count}"
            not_a_number: "δεν είναι αριθμός"
            not_an_integer: "πρέπει να είναι ακέραιος αριθμός"
            odd: "πρέπει να είναι περιττός"
            record_invalid: "Επικύρωση απέτυχε: %{errors}"
            taken: "το έχουν ήδη χρησιμοποιήσει"
            too_long:
              one: "είναι πολύ μεγάλο (το μέγιστο μήκος είναι 1 χαρακτήρας)"
              other: "είναι πολύ μεγάλο (το μέγιστο μήκος είναι %{count} χαρακτήρες)"

            too_short:
              one: "είναι πολύ μικρό (το ελάχιστο μήκος είναι 1 χαρακτήρας)"
              other: "είναι πολύ μικρό (το ελάχιστο μήκος είναι %{count} χαρακτήρες)"

            wrong_length:
              one: "έχει λανθασμένο μήκος (πρέπει να είναι 1 χαρακτήρας)"
              other: "έχει λανθασμένο μήκος (πρέπει να είναι %{count} χαρακτήρες)"

          template:
            body: "Υπήρξαν προβλήματα με τα ακόλουθα πεδία:"
            header:
              one: "1 λάθος εμπόδισε αυτό το %{model} να αποθηκευθεί."
              other: "%{count} λάθη εμπόδισαν αυτό το %{model} να αποθηκευτεί."

        helpers:
          select:
            prompt: "Παρακαλώ επιλέξτε"

          submit:
            create: "Δημιουργήστε %{model}"
            submit: "Αποθηκεύστε %{model}"
            update: "Ενημερώστε %{model}"

        number:
          currency:
            format:
              delimiter: ","
              format: "%n %u"
              precision: 2
              separator: "."
              significant: false
              strip_insignificant_zeros: false
              unit: "€"

          format:
            delimiter: "."
            precision: 3
            separator: ","
            significant: false
            strip_insignificant_zeros: false

          human:
            decimal_units:
              format: "%n %u"
              units:
                billion: "δισεκατομμύριο"
                million: "εκατομμύριο"
                quadrillion: "τετράκις εκατομμύριο"
                thousand: "χίλια"
                trillion: "τρισεκατομμύριο"
                unit: ""

            format:
              delimiter: ""
              precision: 1
              significant: true
              strip_insignificant_zeros: true

            storage_units:
              format: "%n %u"
              units:
                byte:
                  one: "byte"
                  other: "bytes"

                gb: "GB"
                kb: "KB"
                mb: "MB"
                tb: "TB"

          percentage:
            format:
              delimiter: ""

          precision:
            format:
              delimiter: ""

        support:
          array:
            last_word_connector: " και "
            two_words_connector: " και "
            words_connector: ", "

        time:
          am: "πμ"
          formats:
            default: "%d %B %Y %H:%M"
            long: "%A %d %B %Y %H:%M:%S %Z"
            short: "%d %b %H:%M"

          pm: "μμ"

        activemodel:
          errors:
            format: "%{attribute} %{message}"
            messages:
              accepted: "πρέπει να είναι αποδεκτό"
              blank: "δεν πρέπει να είναι κενό"
              confirmation: "δεν ταιριάζει με την επικύρωση"
              empty: "δεν πρέπει να είναι άδειο"
              equal_to: "πρέπει να είναι ίσο με %{count}"
              even: "πρέπει να είναι άρτιος"
              exclusion: "είναι δεσμευμένο"
              greater_than: "πρέπει να είναι μεγαλύτερο από %{count}"
              greater_than_or_equal_to: "πρέπει να είναι μεγαλύτερο ή ίσο με %{count}"
              inclusion: "δεν συμπεριλαμβάνεται στη λίστα"
              invalid: "είναι άκυρο"
              less_than: "πρέπει να είναι λιγότερο από %{count}"
              less_than_or_equal_to: "πρέπει να είναι λιγότερο ή ίσο με %{count}"
              not_a_number: "δεν είναι αριθμός"
              not_an_integer: "πρέπει να είναι ακέραιος αριθμός"
              odd: "πρέπει να είναι περιττός"
              record_invalid: "Επικύρωση απέτυχε: %{errors}"
              taken: "το έχουν ήδη χρησιμοποιήσει"
              too_long:
                one: "είναι πολύ μεγάλο (το μέγιστο μήκος είναι 1 χαρακτήρας)"
                other: "είναι πολύ μεγάλο (το μέγιστο μήκος είναι %{count} χαρακτήρες)"

              too_short:
                one: "είναι πολύ μικρό (το ελάχιστο μήκος είναι 1 χαρακτήρας)"
                other: "είναι πολύ μικρό (το ελάχιστο μήκος είναι %{count} χαρακτήρες)"

              wrong_length:
                one: "έχει λανθασμένο μήκος (πρέπει να είναι 1 χαρακτήρας)"
                other: "έχει λανθασμένο μήκος (πρέπει να είναι %{count} χαρακτήρες)"

            template:
              body: "Υπήρξαν προβλήματα με τα ακόλουθα πεδία:"
              header:
                one: "1 λάθος εμπόδισε αυτό το %{model} να αποθηκευθεί."
                other: "%{count} λάθη εμπόδισαν αυτό το %{model} να αποθηκευτεί."

        activerecord:
          errors:
            format: "%{attribute} %{message}"
            messages:
              accepted: "πρέπει να είναι αποδεκτό"
              blank: "δεν πρέπει να είναι κενό"
              confirmation: "δεν ταιριάζει με την επικύρωση"
              empty: "δεν πρέπει να είναι άδειο"
              equal_to: "πρέπει να είναι ίσο με %{count}"
              even: "πρέπει να είναι άρτιος"
              exclusion: "είναι δεσμευμένο"
              greater_than: "πρέπει να είναι μεγαλύτερο από %{count}"
              greater_than_or_equal_to: "πρέπει να είναι μεγαλύτερο ή ίσο με %{count}"
              inclusion: "δεν συμπεριλαμβάνεται στη λίστα"
              invalid: "είναι άκυρο"
              less_than: "πρέπει να είναι λιγότερο από %{count}"
              less_than_or_equal_to: "πρέπει να είναι λιγότερο ή ίσο με %{count}"
              not_a_number: "δεν είναι αριθμός"
              not_an_integer: "πρέπει να είναι ακέραιος αριθμός"
              odd: "πρέπει να είναι περιττός"
              record_invalid: "Επικύρωση απέτυχε: %{errors}"
              taken: "το έχουν ήδη χρησιμοποιήσει"
              too_long:
                one: "είναι πολύ μεγάλο (το μέγιστο μήκος είναι 1 χαρακτήρας)"
                other: "είναι πολύ μεγάλο (το μέγιστο μήκος είναι %{count} χαρακτήρες)"

              too_short:
                one: "είναι πολύ μικρό (το ελάχιστο μήκος είναι 1 χαρακτήρας)"
                other: "είναι πολύ μικρό (το ελάχιστο μήκος είναι %{count} χαρακτήρες)"

              wrong_length:
                one: "έχει λανθασμένο μήκος (πρέπει να είναι 1 χαρακτήρας)"
                other: "έχει λανθασμένο μήκος (πρέπει να είναι %{count} χαρακτήρες)"

            template:
              body: "Υπήρξαν προβλήματα με τα ακόλουθα πεδία:"
              header:
                one: "1 λάθος εμπόδισε αυτό το %{model} να αποθηκευθεί."
                other: "%{count} λάθη εμπόδισαν αυτό το %{model} να αποθηκευτεί."

    fulcrum: "Fulcrum"
    "log out": "αποσύνδεση"
    "log in": "σύνδεση"
    "sign up": "εγγραφή"
    edit: "επεξεργασία"
    delete: "διαγραφή"
    back: "πίσω"
    import: "εισαγωγή"
    export: "εξαγωγή"
    revert: "επαναφορά"
    apply: "εφαρμογή"
    velocity: "ταχύτητα"
    notes: "σημειώσεις"
    close: "κλείσιμο"
    points: "πόντοι"
    saving: "αποθήκευση ..."
    expand: "ανοιγμα"
    accepted: "γίνουν αποδεκτές"
    rejected: "απορριφθούν"
    delivered: "παραδοθούν"
    "author unknown": "αγνωστος"
    "add story": "νέα ιστορία"
    "save error": "Πρόβλημα κατά την αποθήκευση"
    "override velocity": "επικάλυψη ταχύτητας"
    "story title": "τίτλος"
    "requested on date": "Ζητήθηκε στις {{date}}"
    "requested by user on date": "Ζητήθηκε απο {{user}} στις {{date}}"
    activerecord:
      models:
        user: "μέλος"
        project: "πρότζεκτ"
        story: "ιστορίες"

      attributes:
        user:
          locale: "Γλώσσα"
          name: "Όνομα"
          initials: "Αρχικά"
          password: "Κωδικός"
          password_confirmation: "Κωδικός ξανά"
          current_password: "παρών κωδικός"

        note:
          note: "Σημείωση"

        project:
          name: "Όνομα"
          point_scale: "Βαθμολογική κλίμακα"
          start_date: "Έναρξη"
          iteration_start_day: "Εκκίνηση κύκλων"
          iteration_length: "Μήκως κύκλων"
          default_velocity: "Προκαθορισμένη Ταχύτητα"
          started_at: "Ξεκίνησε στις"
          created_at: "Δημιουργήθηκε στις"
          updated_at: "Ανανεώθηκε στις"

        story:
          title: "Τίτλος"
          description: "Περιγραφή"
          estimate: "Εκτίμηση"
          story_type: "Τύπος ιστορίας"
          state: "Κατάσταση"
          accepted_at: "Αποδοχή στις"
          position: "Θέση"
          labels: "Ετικέτες"
          requested_by: "Ζητήθηκε από"
          owned_by: "Ανήκει σε"
          started_at: "Ξεκίνησε στις"
          created_at: "Δημιουργήθηκε στις"
          updated_at: "Ανανεώθηκε στις"

    projects:
      "new project": "Νέο πρότζεκτ"
      "edit project": "Επεξεργασία προτζεκτ"
      "project properties": "Ρυθμίσεις πρότζεκτ"
      "project was successfully created": "Το πρότζεκτ δημιουργήθηκε με επιτυχία."
      "project was successfully updated": "Το πρότζεκτ ανανεώθηκε με επιτυχία."
      index:
        "listing projects": "Κατάλογος πρότζεκτ"
        "are you sure you want to delete this project": "Είσαι σίγουρος ότι θέλεις να διαγράψεις το πρότζεκτ; Δεν υπάρχει undo!"
        "the iteration starts on x with length of x weeks":
          one: "Οι κύκλοι ξεκινούν %{day} και διαρκούν 1 εβδομάδα"
          other: "Οι κύκλοι ξεκινούν %{day} και διαρκούν %{count} εβδομάδες"

      show:
        done: "ολοκληρωμένες"
        in_progress: "σε εξέλιξη"
        backlog: "σε αναμονή"
        icebox: "ψυγείο"

    registrations:
      edit:
        leave_blank_if_you_dont_want_to_change_it: "Άφησε κενό αν δεν θές να το αλλάξεις"
        notify_me_when_my_stories_are: "Ειδοποίησέ με όταν οι ιστορίες μου"
        we_need_your_current_password_to_confirm_your_changes: "Ο παρών κωδικός μου"

  es:
    devise:
      confirmations:
        confirmed: "Tu cuenta fue confirmada. Ya iniciaste sesión."
        send_instructions: "Vas a recibir un correo con instrucciones sobre cómo confirmar tu cuenta en unos pocos minutos."
        send_paranoid_instructions: "Si tu correo existe en nuestra base de datos, vas a recibir un correo con instrucciones sobre cómo confirmar tu cuenta en unos pocos minutos."

      failure:
        already_authenticated: "Ya has iniciado una sesión."
        inactive: "Tu cuenta aún no ha sido activada."
        invalid: "Contraseña o Correo inválidos."
        invalid_token: "Código de autenticación inválido."
        locked: "Tu cuenta está bloqueada."
        timeout: "Tu sesión expiró, por favor inicia sesión nuevamente para continuar."
        unauthenticated: "Tienes que iniciar sesión o registrarte para poder continuar."
        unconfirmed: "Tienes que confirmar tu cuenta para poder continuar."

      mailer:
        confirmation_instructions:
          subject: "Instrucciones de confirmación"

        reset_password_instructions:
          subject: "Instrucciones de recuperación de contraseña"

        unlock_instructions:
          subject: "Instrucciones para desbloquear"

      omniauth_callbacks:
        failure: "No has sido autorizado en la cuenta %{kind} porque \"%{reason}\"."
        success: "Has sido autorizado satisfactoriamente de la cuenta %{kind}."

      passwords:
        send_instructions: "Vas a recibir un correo con instrucciones sobre cómo resetear tu contraseña en unos pocos minutos."
        send_paranoid_instructions: "Si tu correo existe en nuestra base de datos, vas a recibir un correo con instrucciones sobre cómo resetear tu contraseña en tu bandeja de entrada."
        updated: "Tu contraseña fue cambiada. Ya iniciaste sesión."
        updated_not_active: "Tu contraseña fue cambiada."

      registrations:
        destroyed: "Fue grato tenerte con nosotros. Tu cuenta fue cancelada."
        signed_up: "Bienvenido. Tu cuenta fue creada."
        signed_up_but_inactive: "Tu cuenta ha sido creada correctamente. Sin embargo, no hemos podido iniciar la sesión para que tu cuenta aún no está activada."
        signed_up_but_locked: "Tu cuenta ha sido creada correctamente. Sin embargo, no hemos podido iniciar la sesión para que tu cuenta está bloqueada."
        signed_up_but_unconfirmed: "Se ha enviado un mensaje con un enlace de confirmación a tu correo electrónico. Abre el enlace para activar tu cuenta."
        update_needs_confirmation: "Has actualizado tu cuenta correctamente, pero es necesario confirmar tu nuevo correo electrónico. Por favor, comprueba tu correo y sigue el enlace de confirmación para finalizar la comprobación del nuevo correo eletrónico."
        updated: "Tu cuenta fue actualizada."

      sessions:
        signed_in: "Sesión iniciada."
        signed_out: "Sesión finalizada."

      unlocks:
        send_instructions: "Vas a recibir instrucciones para desbloquear tu cuenta en unos pocos minutos."
        send_paranoid_instructions: "Si tu cuenta existe, vas a recibir instrucciones para desbloquear tu cuenta en unos pocos minutos."
        unlocked: "Tu cuenta fue desbloqueada. Ya iniciaste sesión."

    errors:
      messages:
        already_confirmed: "ya fue confirmado, por favor intenta iniciar sesión"
        expired: "ha expirado, por favor solicita una nueva"
        not_found: "no se encontró"
        not_locked: "no estaba bloqueado"
        not_saved:
          one: "Un error ocurrió al tratar de guardar %{resource}:"
          other: "%{count} errores ocurrieron al tratar de guardar %{resource}:"

        accepted: "debe ser aceptado"
        blank: "no puede estar en blanco"
        confirmation: "no coincide con la confirmación"
        empty: "no puede estar vacío"
        equal_to: "debe ser igual a %{count}"
        even: "debe ser un número par"
        exclusion: "está reservado"
        greater_than: "debe ser mayor que %{count}"
        greater_than_or_equal_to: "debe ser mayor o igual que %{count}"
        inclusion: "no está incluído en la lista"
        invalid: "es inválido"
        less_than: "debe ser menor que %{count}"
        less_than_or_equal_to: "debe ser menor o igual que %{count}"
        not_a_number: "no es un número"
        not_an_integer: "debe ser un entero"
        odd: "debe ser un número non"
        record_invalid: "La validación falló: %{errors}"
        taken: "ya ha sido tomado"
        too_long:
          one: "es demasiado largo (máximo 1 caracter)"
          other: "es demasiado largo (máximo %{count} caracteres)"

        too_short:
          one: "es demasiado corto (mínimo 1 caracter)"
          other: "es demasiado corto (mínimo %{count} caracteres)"

        wrong_length:
          one: "longitud errónea (debe ser de 1 caracter)"
          other: "longitud errónea (debe ser de %{count} caracteres)"

      format: "%{attribute} %{message}"
      template:
        body: "Revise que los siguientes campos sean válidos:"
        header:
          one: "%{model} no pudo guardarse debido a 1 error"
          other: "%{model} no pudo guardarse debido a %{count} errores"

    fulcrum: "Fulcrum"
    "log out": "Termina session"
    "log in": "Inicia session"
    "sign up": "Registrate"
    edit: "Edita"
    delete: "Borra"
    back: "Atras"
    import: "Importa"
    export: "Exporta"
    "author unknown": "Autor desconocido"
    activerecord:
      models:
        user: "Miembro"
        project: "Proyecto"

    projects:
      "new project": "Nuevo Proyecto"
      "edit project": "Edita Proyecto"
      "project properties": "Propiedades del Proyecto"
      "project was successfully created": "El proyecto fue creado exitosamente."
      "project was successfully updated": "El proyecto fue actualizado exitosamente."
      index:
        "listing projects": "Listado de Proyectos"
        "are you sure you want to delete this project": "Estas seguro de querer borrar este proyecto? Esta acción no se puede revertir."
        "the iteration starts on x with length of x weeks":
          one: "Las iteraciones empiezane en %{day} con una duración de 1 semana"
          other: "Las iteraciones empiezane en %{day} con una duración de %{count} semanas"

      show:
        done: "Terminadas"
        in_progress: "En progreso"
        backlog: "Acumuladas"
        icebox: "Congelador"

    registrations:
      edit:
        leave_blank_if_you_dont_want_to_change_it: "Dejar en blanco si no quieres cambiarlo"
        notify_me_when_my_stories_are: "Notificame cuando mis historias estan"
        we_need_your_current_password_to_confirm_your_changes: "Necesitamos tu password para confirmar tus cambios"

    date:
      abbr_day_names: ["dom", "lun", "mar", "mié", "jue", "vie", "sáb"]
      abbr_month_names: [null, "ene", "feb", "mar", "abr", "may", "jun", "jul", "ago", "sep", "oct", "nov", "dic"]
      day_names: ["domingo", "lunes", "martes", "miércoles", "jueves", "viernes", "sábado"]
      formats:
        default: "%d/%m/%Y"
        long: "%A, %d de %B de %Y"
        short: "%d de %b"

      month_names: [null, "enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"]
      order: ["day", "month", "year"]

    datetime:
      distance_in_words:
        about_x_hours:
          one: "cerca de 1 hora"
          other: "cerca de %{count} horas"

        about_x_months:
          one: "cerca de 1 mes"
          other: "cerca de %{count} meses"

        about_x_years:
          one: "cerca de 1 año"
          other: "cerca de %{count} años"

        almost_x_years:
          one: "casi 1 año"
          other: "casi %{count} años"

        half_a_minute: "medio minuto"
        less_than_x_minutes:
          one: "menos de 1 minuto"
          other: "menos de %{count} minutos"

        less_than_x_seconds:
          one: "menos de 1 segundo"
          other: "menos de %{count} segundos"

        over_x_years:
          one: "más de 1 año"
          other: "más de %{count} años"

        x_days:
          one: "1 día"
          other: "%{count} días"

        x_minutes:
          one: "1 minuto"
          other: "%{count} minutos"

        x_months:
          one: "1 mes"
          other: "%{count} meses"

        x_seconds:
          one: "1 segundo"
          other: "%{count} segundos"

      prompts:
        day: "Día"
        hour: "Hora"
        minute: "Minuto"
        month: "Mes"
        second: "Segundos"
        year: "Año"

    helpers:
      select:
        prompt: "Por favor selecciona"

      submit:
        create: "Crear %{model}"
        submit: "Guardar %{model}"
        update: "Actualizar %{model}"

    number:
      currency:
        format:
          delimiter: ","
          format: "%u%n"
          precision: 2
          separator: "."
          significant: false
          strip_insignificant_zeros: false
          unit: "$"

      format:
        delimiter: ","
        precision: 2
        separator: "."
        significant: false
        strip_insignificant_zeros: false

      human:
        decimal_units:
          format: "%n %u"
          units:
            billion: "mil millones"
            million: "millón"
            quadrillion: "mil billones"
            thousand: "mil"
            trillion: "billón"
            unit: ""

        format:
          delimiter: ","
          precision: 3
          significant: true
          strip_insignificant_zeros: true

        storage_units:
          format: "%n %u"
          units:
            byte:
              one: "Byte"
              other: "Bytes"

            gb: "GB"
            kb: "KB"
            mb: "MB"
            tb: "TB"

      percentage:
        format:
          delimiter: ","

      precision:
        format:
          delimiter: ","

    support:
      array:
        last_word_connector: " y "
        two_words_connector: " y "
        words_connector: ", "

    time:
      am: "am"
      formats:
        default: "%a, %d de %b de %Y a las %H:%M:%S %Z"
        long: "%A, %d de %B de %Y a las %I:%M %p"
        short: "%d de %b a las %H:%M hrs"
        note_date: "%b %d, %Y"

      pm: "pm"

    activemodel:
      errors:
        format: "%{attribute} %{message}"
        messages:
          accepted: "debe ser aceptado"
          blank: "no puede estar en blanco"
          confirmation: "no coincide con la confirmación"
          empty: "no puede estar vacío"
          equal_to: "debe ser igual a %{count}"
          even: "debe ser un número par"
          exclusion: "está reservado"
          greater_than: "debe ser mayor que %{count}"
          greater_than_or_equal_to: "debe ser mayor o igual que %{count}"
          inclusion: "no está incluído en la lista"
          invalid: "es inválido"
          less_than: "debe ser menor que %{count}"
          less_than_or_equal_to: "debe ser menor o igual que %{count}"
          not_a_number: "no es un número"
          not_an_integer: "debe ser un entero"
          odd: "debe ser un número non"
          record_invalid: "La validación falló: %{errors}"
          taken: "ya ha sido tomado"
          too_long:
            one: "es demasiado largo (máximo 1 caracter)"
            other: "es demasiado largo (máximo %{count} caracteres)"

          too_short:
            one: "es demasiado corto (mínimo 1 caracter)"
            other: "es demasiado corto (mínimo %{count} caracteres)"

          wrong_length:
            one: "longitud errónea (debe ser de 1 caracter)"
            other: "longitud errónea (debe ser de %{count} caracteres)"

        template:
          body: "Revise que los siguientes campos sean válidos:"
          header:
            one: "%{model} no pudo guardarse debido a 1 error"
            other: "%{model} no pudo guardarse debido a %{count} errores"
