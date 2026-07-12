.class public final synthetic Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput p2, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget v1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->lambda$populatePreference$0(Ljava/util/ArrayList;ILcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
