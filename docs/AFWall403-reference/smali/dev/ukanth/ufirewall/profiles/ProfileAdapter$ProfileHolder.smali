.class Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;
.super Ljava/lang/Object;
.source "ProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/profiles/ProfileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileHolder"
.end annotation


# instance fields
.field public profile:Ldev/ukanth/ufirewall/profiles/ProfileData;

.field public profileNameView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder-IA;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/profiles/ProfileAdapter$ProfileHolder;-><init>()V

    return-void
.end method
