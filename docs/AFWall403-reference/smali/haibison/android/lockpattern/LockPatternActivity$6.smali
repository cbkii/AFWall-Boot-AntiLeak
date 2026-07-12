.class Lhaibison/android/lockpattern/LockPatternActivity$6;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/LockPatternActivity;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/LockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1149
    sget-object p1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1150
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1151
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->DONE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-static {p1, v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1002(Lhaibison/android/lockpattern/LockPatternActivity;Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1152
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object p1

    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->clearPattern()V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1153
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_redraw_pattern_to_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1154
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_cmd_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1155
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1157
    invoke-virtual {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object p1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1158
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1300(Lhaibison/android/lockpattern/LockPatternActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Security;->setPattern(Landroid/content/Context;[C)V

    :cond_1
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1159
    invoke-static {v0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$100(Lhaibison/android/lockpattern/LockPatternActivity;[C)V

    goto :goto_1

    .line 1162
    :cond_2
    sget-object p1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1165
    invoke-virtual {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_FORGOT_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    .line 1166
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> Failed sending pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ALP_42447968_12.0.0"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$6;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    const/4 v0, 0x3

    .line 1169
    invoke-static {p1, v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$500(Lhaibison/android/lockpattern/LockPatternActivity;I)V

    :cond_4
    :goto_1
    return-void
.end method
