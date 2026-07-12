.class public final synthetic Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;->f$0:Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;->f$0:Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->$r8$lambda$Uk9N8z5NclgYhZhO4PGsGXcgElg(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
