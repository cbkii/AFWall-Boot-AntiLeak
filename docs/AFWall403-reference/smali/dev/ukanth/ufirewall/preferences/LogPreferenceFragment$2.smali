.class Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$2;
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


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    const-string p1, "LogPreferenceFragment"

    const-string p2, "Log target change cancelled by user"

    .line 206
    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
