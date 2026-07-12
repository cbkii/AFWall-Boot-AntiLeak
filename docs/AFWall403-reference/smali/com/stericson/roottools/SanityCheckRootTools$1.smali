.class Lcom/stericson/roottools/SanityCheckRootTools$1;
.super Ljava/lang/Object;
.source "SanityCheckRootTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/roottools/SanityCheckRootTools;


# direct methods
.method constructor <init>(Lcom/stericson/roottools/SanityCheckRootTools;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$1;->this$0:Lcom/stericson/roottools/SanityCheckRootTools;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/stericson/roottools/SanityCheckRootTools$1;->this$0:Lcom/stericson/roottools/SanityCheckRootTools;

    .line 117
    invoke-static {v0}, Lcom/stericson/roottools/SanityCheckRootTools;->-$$Nest$fgetmScrollView(Lcom/stericson/roottools/SanityCheckRootTools;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
