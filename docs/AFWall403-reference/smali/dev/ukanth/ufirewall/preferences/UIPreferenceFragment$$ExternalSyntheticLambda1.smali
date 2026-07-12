.class public final synthetic Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;

    iput-object p2, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$3:Ljava/util/ArrayList;

    iput p5, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$3:Ljava/util/ArrayList;

    iget v4, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->$r8$lambda$0ikhnNfGADoSdYH5a74sfo6hcPw(Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
