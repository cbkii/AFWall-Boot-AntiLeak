.class Lhaibison/android/lockpattern/LockPatternActivity$4;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;


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

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 3

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1104
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$800(Lhaibison/android/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1106
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1107
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1108
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1109
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1110
    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1111
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_draw_an_unlock_pattern:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1112
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1114
    :cond_1
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1115
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1116
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_draw_pattern_to_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1118
    :cond_2
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1119
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1120
    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1121
    invoke-static {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v1

    sget-object v2, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->setPattern(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 1091
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1092
    invoke-static {v0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1100(Lhaibison/android/lockpattern/LockPatternActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1094
    :cond_0
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1095
    invoke-static {v0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1200(Lhaibison/android/lockpattern/LockPatternActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1097
    :cond_1
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1098
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->getDisplayMode()Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1200(Lhaibison/android/lockpattern/LockPatternActivity;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1073
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$800(Lhaibison/android/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1074
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 1076
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1077
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_release_finger_when_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1078
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1079
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_0
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1082
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_draw_pattern_to_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1084
    :cond_1
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$4;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1085
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method
