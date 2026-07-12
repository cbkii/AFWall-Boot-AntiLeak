.class Lhaibison/android/lockpattern/LockPatternActivity$3;
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

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    iput-object p4, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->val$pattern:Ljava/util/List;

    .line 977
    invoke-direct {p0, p2, p3}, Lhaibison/android/lockpattern/utils/LoadingView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 977
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 981
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 982
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;

    move-result-object p1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->val$pattern:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lhaibison/android/lockpattern/utils/Encrypter;->encrypt(Landroid/content/Context;Ljava/util/List;)[C

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->val$pattern:Ljava/util/List;

    invoke-static {p1}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->patternToSha1(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 987
    invoke-super {p0, p1}, Lhaibison/android/lockpattern/utils/LoadingView;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 989
    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    check-cast p1, [C

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 990
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_pattern_recorded:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$3;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 991
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
