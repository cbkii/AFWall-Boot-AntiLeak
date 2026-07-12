.class Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SecPreferenceFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->confirmResetPasswords(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

.field final synthetic val$itemList:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Landroid/preference/ListPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;->val$itemList:Landroid/preference/ListPreference;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 2

    .line 396
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 398
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isEnc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AFW@LL_P@SSWORD_PR0T3CTI0N"

    .line 399
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->unhideCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    const-string p2, ""

    .line 414
    invoke-static {p2}, Ldev/ukanth/ufirewall/util/G;->profile_pwd(Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x0

    .line 415
    invoke-static {p2}, Ldev/ukanth/ufirewall/util/G;->isEnc(Z)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;->val$itemList:Landroid/preference/ListPreference;

    .line 416
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 417
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    .line 419
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    sget v0, Ldev/ukanth/ufirewall/R$string;->wrong_password:I

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
