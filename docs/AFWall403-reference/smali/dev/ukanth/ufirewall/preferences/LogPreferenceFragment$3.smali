.class Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;
.super Ljava/lang/Object;
.source "LogPreferenceFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->showLogTargetChangeDialog(Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

.field final synthetic val$listPreference:Landroid/preference/ListPreference;

.field final synthetic val$newLogTarget:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Ljava/lang/String;Landroid/preference/ListPreference;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;->this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;->val$newLogTarget:Ljava/lang/String;

    iput-object p3, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;->val$listPreference:Landroid/preference/ListPreference;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;->this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;->val$newLogTarget:Ljava/lang/String;

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;->val$listPreference:Landroid/preference/ListPreference;

    .line 199
    invoke-static {p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->-$$Nest$mapplyLogTargetChange(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Ljava/lang/String;Landroid/preference/ListPreference;)V

    return-void
.end method
