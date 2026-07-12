.class Lhaibison/android/lockpattern/LockPatternActivity$1;
.super Lhaibison/android/lockpattern/utils/LoadingView;
.source "LockPatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/LockPatternActivity;->doComparePattern(Ljava/util/List;)V
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

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    iput-object p4, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->val$pattern:Ljava/util/List;

    .line 888
    invoke-direct {p0, p2, p3}, Lhaibison/android/lockpattern/utils/LoadingView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 888
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3

    .line 892
    sget-object p1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 893
    invoke-virtual {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 894
    invoke-static {p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Security;->getPattern(Landroid/content/Context;)[C

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 896
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->val$pattern:Ljava/util/List;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;

    move-result-object v1

    iget-object v2, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-interface {v1, v2, p1}, Lhaibison/android/lockpattern/utils/Encrypter;->decrypt(Landroid/content/Context;[C)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->val$pattern:Ljava/util/List;

    .line 897
    invoke-static {v0}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->patternToSha1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 899
    :cond_2
    sget-object p1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->val$pattern:Ljava/util/List;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 900
    invoke-virtual {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 903
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 908
    invoke-super {p0, p1}, Lhaibison/android/lockpattern/utils/LoadingView;->onPostExecute(Ljava/lang/Object;)V

    .line 910
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$100(Lhaibison/android/lockpattern/LockPatternActivity;[C)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 912
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$208(Lhaibison/android/lockpattern/LockPatternActivity;)I

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 913
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$300(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$200(Lhaibison/android/lockpattern/LockPatternActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 915
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$200(Lhaibison/android/lockpattern/LockPatternActivity;)I

    move-result p1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$400(Lhaibison/android/lockpattern/LockPatternActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$500(Lhaibison/android/lockpattern/LockPatternActivity;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 917
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 918
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_try_again:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 919
    invoke-static {p1}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object p1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$1;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$800(Lhaibison/android/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
