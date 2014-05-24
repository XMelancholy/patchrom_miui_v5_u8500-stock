.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnForcedPauseListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_FORCEDPAUSE:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;

    new-instance v0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;->onForcedPause()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onForcedPause()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
