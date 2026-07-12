.class public Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lhaibison/android/lockpattern/LockPatternActivity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->context:Landroid/content/Context;

    .line 358
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method

.method public static newCaptchaVerifier(Landroid/content/Context;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 3

    .line 341
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;

    const-class v1, Lhaibison/android/lockpattern/LockPatternActivity;

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newPatternComparator(Landroid/content/Context;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-static {p0, v0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->newPatternComparator(Landroid/content/Context;[C)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newPatternComparator(Landroid/content/Context;[C)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 3

    .line 319
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;

    const-class v1, Lhaibison/android/lockpattern/LockPatternActivity;

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->setPattern([C)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newPatternCreator(Landroid/content/Context;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 3

    .line 307
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;

    const-class v1, Lhaibison/android/lockpattern/LockPatternActivity;

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public buildPendingIntent(II)Landroid/app/PendingIntent;
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->context:Landroid/content/Context;

    .line 391
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public buildPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->context:Landroid/content/Context;

    .line 407
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public makeRestartTask()Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    const v1, 0x14008000

    .line 569
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public setLayout(I)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(I)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 607
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_LAYOUT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 608
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_LAYOUT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setPattern([C)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">([C)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 499
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 500
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setPendingIntentCancelled(Landroid/app/PendingIntent;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(",
            "Landroid/app/PendingIntent;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 541
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 542
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setPendingIntentForgotPattern(Landroid/app/PendingIntent;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(",
            "Landroid/app/PendingIntent;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 555
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_FORGOT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 556
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_FORGOT_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setPendingIntentOk(Landroid/app/PendingIntent;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(",
            "Landroid/app/PendingIntent;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 527
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 528
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setResultReceiver(Landroid/os/ResultReceiver;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(",
            "Landroid/os/ResultReceiver;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 513
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 514
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTheme(I)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(I)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 485
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 486
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTitle(I)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(I)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 581
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 582
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 595
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->context:Landroid/content/Context;

    .line 465
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public start(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->context:Landroid/content/Context;

    .line 474
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startForResult(Landroid/app/Activity;I)V
    .locals 1

    .line 420
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startForResult(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 1

    .line 433
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startForResult(Landroid/app/Fragment;I)V
    .locals 1

    .line 445
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startForResult(Landroid/app/Fragment;ILandroid/os/Bundle;)V
    .locals 1

    .line 458
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
