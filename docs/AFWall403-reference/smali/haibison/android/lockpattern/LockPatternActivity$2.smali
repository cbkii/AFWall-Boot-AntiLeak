.class Lhaibison/android/lockpattern/LockPatternActivity$2;
.super Lhaibison/android/lockpattern/utils/LoadingView;
.source "LockPatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/LockPatternActivity;->doCheckAndCreatePattern(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhaibison/android/lockpattern/utils/LoadingView<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/LockPatternActivity;

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/LockPatternActivity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    iput-object p4, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->val$pattern:Ljava/util/List;

    .line 945
    invoke-direct {p0, p2, p3}, Lhaibison/android/lockpattern/utils/LoadingView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 945
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 949
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->val$pattern:Ljava/util/List;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 950
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;

    move-result-object v0

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lhaibison/android/lockpattern/utils/Encrypter;->decrypt(Landroid/content/Context;[C)Ljava/util/List;

    move-result-object v0

    .line 949
    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 953
    invoke-virtual {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object p1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->val$pattern:Ljava/util/List;

    invoke-static {v0}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->patternToSha1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 952
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 959
    invoke-super {p0, p1}, Lhaibison/android/lockpattern/utils/LoadingView;->onPostExecute(Ljava/lang/Object;)V

    .line 961
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 962
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_your_new_unlock_pattern:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 963
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 965
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_redraw_pattern_to_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 966
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 967
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 968
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object p1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$2;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$800(Lhaibison/android/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
