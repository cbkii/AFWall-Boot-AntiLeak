.class public final synthetic Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;->f$0:Ldev/ukanth/ufirewall/MainActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 7

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;->f$0:Ldev/ukanth/ufirewall/MainActivity;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Ldev/ukanth/ufirewall/MainActivity;->$r8$lambda$Iy3eqU-0Zy79zKFOMVj8e1F4tw8(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
