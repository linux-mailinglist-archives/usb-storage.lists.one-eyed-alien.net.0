Return-Path: <usb-storage+bncBD6LRVPZ6YGRB2HSUWRAMGQENNAKNBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BCB6EFADD
	for <lists+usb-storage@lfdr.de>; Wed, 26 Apr 2023 21:20:09 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id af79cd13be357-74df56fa31dsf534927785a.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Apr 2023 12:20:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682536808; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tf18epl/l0C7MFLQENscc7zfc8Fp7cHOCrEFZRUqFWQGzYHd4hOaP0FuyUxIP3jy9R
         GLCmQiPP4buLRA6HGx3c1En/cXlBJrW6yWZrwHlbkHe8iMFrq59NE4ZuLh+txNff2V6w
         gVcHo0G7kUOEetnf1hibpdSidCNJ15r5nKPEUNOKzN4XEgRCtThlRClm4nPuMqi4zw8g
         IWNFuF8k/gKT8RPWTWDRCKBC04xtXWNy47jEVJh8acFt9FTc3JWfaSBk0tSMs1PrFzF8
         RMasWD5vPxBr4adecIOcgsWIo2g/bpCsqKMSXrLTiKh4JSDy/v4isUixahANryA4sgvi
         57+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fI01A87MqZ+2FqNT4oZp4KLFkNO4ygMm+wk3zFnMk0I=;
        b=T1YmGo00YycsYfU99joXEC5ubqvkvyBPw29vWMyuPhiu/ngZtYiptJGFmF0nkgZAaE
         9BFFyrTSi/u5SCUgC2g2I4sObecOCHPvigzChC6g24JhIuONE/C6Fed5ZCmIfrLWr8FI
         Y5toPJhELtzqhpXVeMpPuM8GWC3B4CjCuGpWZkmuLy5JomjNpjh0FBJjwXfghps7Oklz
         Sgz+n9DzcB57eeeU8Q2v4bJ19TP8Y/frk8odmTGikuoC+4DBINP1dshjbxvopQ3rGqB2
         Xs+d5oIDiQHNl4XXf1+ONeDU6lXL/HphSeTFSEVzBwcPCGd7eKpcsfTdw6ml6hrkLw+H
         zAGg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1682536808; x=1685128808;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fI01A87MqZ+2FqNT4oZp4KLFkNO4ygMm+wk3zFnMk0I=;
        b=Yz8duqgdoh483O92o7/5SCFVq7Qp98ho5kSMz+FV7cAEa7QM5TAzrTUD3lcv3n9hE8
         G9PEDfBWR1yFqspH1GuZW4SHa7XLEPWnbEvDySAfDmc5mFMcGMqaD2o4JLFmyzknzaqm
         tbHdrYdzgdTMyJwFd9+17qZ1cI4K6MC6Tsncs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682536808; x=1685128808;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fI01A87MqZ+2FqNT4oZp4KLFkNO4ygMm+wk3zFnMk0I=;
        b=TlruGQ/fMCZze2/TzTVitpE754DNrX39qdIAjFds1t9GhOCfRzEEcMyLISYgqmfzvz
         AYkJCkmlDdHWaMmNkZ14E2vmYTqkZ0ok6iOuZAVX521bj9V0AfJ4e3X8GW3faLm4I/zV
         Uaw/f3h7kayouJHrDkSI6G1EmPJMRcJ+l8t4Nbq2q8VaPZsbD1UlPf9bIZpT59ExEzF9
         mqjQ3TTCjO69mwSfYTORV6FCUha++Zk6/jnDKmxRDMBVzqv5v+n9TO6wWp5Vgc77iZuG
         n6LvBrQSNjoWbfDpcrsY2jIzo9Cs/ZlkF5ui7wvWhJ3SSkK4bJICeuFSthzvKfHSfiSJ
         feHg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AAQBX9eU0W6MpSr5ldacps5ESW+Qo1YA/D1fFFkHmsvqDnlEyFw1WxVq
	8B5FNtxtqL+oLuUPfieOiw6FSA==
X-Google-Smtp-Source: AKy350YFVXD9X+sVObwG/LerSyKqlwS7DYir26bLeRne3F/8W1zKwht6a9+Wa6QrYxuGLvqVXeqUYQ==
X-Received: by 2002:ac8:5c14:0:b0:3ee:be98:9fc9 with SMTP id i20-20020ac85c14000000b003eebe989fc9mr7647448qti.3.1682536808777;
        Wed, 26 Apr 2023 12:20:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:c20a:0:b0:56e:92b0:a9da with SMTP id l10-20020a0cc20a000000b0056e92b0a9dals12724693qvh.3.-pod-prod-gmail;
 Wed, 26 Apr 2023 12:20:07 -0700 (PDT)
X-Received: by 2002:a05:6214:e4b:b0:613:5d6a:94f6 with SMTP id o11-20020a0562140e4b00b006135d6a94f6mr19977617qvc.19.1682536807644;
        Wed, 26 Apr 2023 12:20:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682536807; cv=none;
        d=google.com; s=arc-20160816;
        b=pRUA2CpxRoCxUTn9uZhqUBYQTrrPa/7SgHZZEygmfbgKXMVaaHkQfAilL1WKhGA2i5
         m5SLU4Ww4ffuC/DrCoOth1dybcDn4Eah5XDy062PD33+dDQ97axXsM0KEG0p3Y4/IAzd
         Mv1yOSu+lg80Jgkv9Hyxrl4iwV2Iv5ETuOVopHKrEEx7S/1EqbNWgTx0LIz3krpSn3aV
         u1UwDnolBq9HlJeMyeUFPkOF7gcOf2KpqndPrMdAOG4MFX7LBGXQOkEzmgDdp2Ijef7P
         oxXS6oTWwn2WE+v/urCwMnW2wHTrOodDLR5iajO+mse+LUYf2WZ4H3heD3dTDArQyhMH
         vZBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=1plL+5zDghPsLfVtm7+IwMXEhV56wGIwOfqJTNUaeS8=;
        b=LjIqW/7kLj1ed3gYHt+Wch1XfMlVBpK/kv81rMdrwyk+XarzG/wtafsn4U5YQTVKUe
         lMzdxCh0TJsRtqwuVeRE20CgzwE/kxlf+6czs8VUgjAP4Jv+W6SiaS6Kv6CBAE4Pr3S7
         Q7v7yvYJcnzkgiY60dVyHjTvR8L2wNyGiku5mlfOKOG/RW8xLAP0SU6ZjCeN1k4Z8OHh
         p4w011TnZUtADENphGSyjh6yasca5KInu9nnhM4YFn4oA2Swe9mlCn3UKr+si3E2nW1p
         dumozXh9DtfD7B2Ib5eoBcpXn+wV5dh3Z0BGSYwLDlHoYzB2DjuFBepfjBHK3Lse8GoA
         3whQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id gi11-20020a056214248b00b005a41d434392si10968266qvb.475.2023.04.26.12.20.07
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 26 Apr 2023 12:20:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 133613 invoked by uid 1000); 26 Apr 2023 15:20:07 -0400
Date: Wed, 26 Apr 2023 15:20:07 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Maxime Bizon <mbizon@freebox.fr>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
References: <ZEllnjMKT8ulZbJh@sakura>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ZEllnjMKT8ulZbJh@sakura>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

[Adding linux-scsi and Martin to the CC: list, since this looks like it 
might be a problem in the SCSI core]

On Wed, Apr 26, 2023 at 07:55:42PM +0200, Maxime Bizon wrote:
> 
> Hello,
> 
> I have a faulty 128MB USB stick that happens to randomly timeout when
> reading a specific block.
> 
> After the first timeout, the scsi layer retries the command. If that
> retry work, then everything goes well. But if the retried command
> timeouts as well, then I get a deadlock.

What version of the kernel are you using?

> To reproduce fast & reliable, I'm using these settings:
> 
> # echo 10 >/proc/sys/kernel/hung_task_timeout_secs
> # echo 0x3f > /proc/sys/dev/scsi/logging_level
> # cd /sys/block/sda/queue/
> # echo none > scheduler
> # echo 1 > nr_requests
> # echo 1 > nomerges
> # echo 4 > max_sectors_kb
> # echo 5000 > io_timeout
> # cat /dev/sda > /dev/null
> 
> 
> dmesg with timestamps so it's easy to spot the timeouts:

> [  211.733162] *** thread awakened
> [  211.733174] Command READ_10 (10 bytes)
> [  211.733183] bytes: 28 00 00 02 02 00 00 00 08 00
> [  211.733192] Bulk Command S 0x43425355 T 0xb8cb L 4096 F 128 Trg 0 LUN 0 CL 10
> [  211.733204] xfer 31 bytes
> [  211.733288] Status code 0; transferred 31/31
> [  211.733300] -- transfer complete
> [  211.733306] Bulk command transfer result=0
> [  211.733313] xfer 4096 bytes, 1 entries
> [  218.089304] sd 0:0:0:0: [sda] tag#0 abort scheduled
> [  218.109297] sd 0:0:0:0: [sda] tag#0 aborting command
> [  218.109315] command_abort called
> [  218.109324] -- cancelling sg request
> [  218.112380] Status code -104; transferred 3072/4096
> [  218.112393] -- transfer cancelled
> [  218.112400] Bulk data transfer result 0x4
> [  218.112407] -- command was aborted
> [  218.209278] usb 1-1.2: reset high-speed USB device number 3 using orion-ehci
> [  218.359923] usb_reset_device returns 0
> [  218.359936] scsi command aborted
> [  218.359947] *** thread sleeping
> [  218.359964] sd 0:0:0:0: [sda] tag#0 retry aborted command
> [  218.399298] *** thread awakened
> [  218.399311] Command READ_10 (10 bytes)
> [  218.399320] bytes: 28 00 00 02 02 00 00 00 08 00
> [  218.399330] Bulk Command S 0x43425355 T 0xb8cc L 4096 F 128 Trg 0 LUN 0 CL 10
> [  218.399342] xfer 31 bytes
> [  218.399544] Status code 0; transferred 31/31
> [  218.399556] -- transfer complete
> [  218.399562] Bulk command transfer result=0
> [  218.399570] xfer 4096 bytes, 1 entries
> [  225.129297] sd 0:0:0:0: [sda] tag#0 previous abort failed
> [  225.129337] scsi host0: Waking error handler thread
> [  225.129358] scsi host0: scsi_eh_0: waking up 0/1/1
> [  225.129375] scsi host0: scsi_eh_prt_fail_stats: cmds failed: 0, cancel: 1
> [  225.129387] scsi host0: Total of 1 commands on 1 devices require eh work
> [  225.129402] sd 0:0:0:0: scsi_eh_0: Sending BDR
> [  225.129414] device_reset called
> [  235.369290] INFO: task scsi_eh_0:173 blocked for more than 10 seconds.
> [  235.369311]       Not tainted 6.3.0-00615-gffe64935a4a2 #9
> [  235.369320] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [  235.369327] task:scsi_eh_0       state:D stack:0     pid:173   ppid:2      flags:0x00000000
> [  235.369350]  __schedule from schedule+0x70/0xac
> [  235.369374]  schedule from schedule_preempt_disabled+0x24/0x34
> [  235.369393]  schedule_preempt_disabled from __mutex_lock.constprop.0+0x14c/0x280
> [  235.369412]  __mutex_lock.constprop.0 from device_reset+0x28/0x64
> [  235.369433]  device_reset from scsi_try_bus_device_reset+0x24/0x58
> [  235.369452]  scsi_try_bus_device_reset from scsi_eh_ready_devs+0x2f0/0x97c
> [  235.369470]  scsi_eh_ready_devs from scsi_error_handler+0x238/0x49c
> [  235.369488]  scsi_error_handler from kthread+0xc4/0xdc
> [  235.369507]  kthread from ret_from_fork+0x14/0x3c
> [  235.369567] INFO: task usb-storage:176 blocked for more than 10 seconds.
> [  235.369576]       Not tainted 6.3.0-00615-gffe64935a4a2 #9
> [  235.369583] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [  235.369590] task:usb-storage     state:D stack:0     pid:176   ppid:2      flags:0x00000000
> [  235.369606]  __schedule from schedule+0x70/0xac
> [  235.369622]  schedule from schedule_timeout+0x18/0xd0
> [  235.369641]  schedule_timeout from __wait_for_common+0xc0/0x13c
> [  235.369660]  __wait_for_common from usb_sg_wait+0x10c/0x118
> [  235.369677]  usb_sg_wait from usb_stor_bulk_transfer_sglist+0xc4/0x118
> [  235.369695]  usb_stor_bulk_transfer_sglist from usb_stor_bulk_srb+0x24/0x3c
> [  235.369713]  usb_stor_bulk_srb from usb_stor_Bulk_transport+0x164/0x44c
> [  235.369731]  usb_stor_Bulk_transport from usb_stor_invoke_transport+0x20/0x5c4
> [  235.369750]  usb_stor_invoke_transport from usb_stor_control_thread+0x1a4/0x2bc
> [  235.369769]  usb_stor_control_thread from kthread+0xc4/0xdc
> [  235.369786]  kthread from ret_from_fork+0x14/0x3c
> 
> 
> Turns out eh_device_reset_handler() is called with a pending command
> (srb == us->srb), and I don't know if the usb code was expecting
> eh_abort_handler() to be called first.

usb-storage definitely expects any pending command to be aborted before 
a reset is attempted.

> This patch fixes the issue, not sure if it's correct:
> 
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -455,6 +455,9 @@ static int device_reset(struct scsi_cmnd *srb)
>  
>         usb_stor_dbg(us, "%s called\n", __func__);
>  
> +       if (us->srb == srb)
> +               command_abort(srb);
> +
>         /* lock the device pointers and do the reset */
>         mutex_lock(&(us->dev_mutex));
>         result = us->transport_reset(us);

Maybe...  But it would be better to check first whether the SCSI core is 
supposed to be reusing an active srb in this way.

Martin, can tell us what is supposed to happen here?  Is the 
eh_device_reset_handler routine supposed to be called with a scsi_cmnd 
for a currently active command?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/34a2e50b-e899-45ee-ac14-31fa0bb1616b%40rowland.harvard.edu.
