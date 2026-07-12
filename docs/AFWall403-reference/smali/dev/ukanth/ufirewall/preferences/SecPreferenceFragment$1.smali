.class Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SecPreferenceFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->showPasswordActivity(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

.field final synthetic val$firstPass:Landroid/widget/EditText;

.field final synthetic val$secondPass:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->val$firstPass:Landroid/widget/EditText;

    iput-object p3, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->val$secondPass:Landroid/widget/EditText;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->val$firstPass:Landroid/widget/EditText;

    .line 229
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->val$secondPass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->val$firstPass:Landroid/widget/EditText;

    .line 230
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->-$$Nest$msetPassword(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 231
    invoke-static {p2}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck(Z)Z

    .line 232
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    .line 234
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;->this$0:Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    sget v0, Ldev/ukanth/ufirewall/R$string;->settings_pwd_not_equal:I

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
