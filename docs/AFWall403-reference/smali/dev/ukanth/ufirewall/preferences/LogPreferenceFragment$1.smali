.class Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;
.super Ljava/lang/Object;
.source "LogPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->populateLogTarget(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

.field final synthetic val$listPreference:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Landroid/preference/ListPreference;)V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;->this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;->val$listPreference:Landroid/preference/ListPreference;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;->this$0:Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;->val$listPreference:Landroid/preference/ListPreference;

    .line 70
    invoke-static {v0, p1, p2, v1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->-$$Nest$mshowLogTargetChangeDialog(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V

    const/4 p1, 0x0

    return p1
.end method
