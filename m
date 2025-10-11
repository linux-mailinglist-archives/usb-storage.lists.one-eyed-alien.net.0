Return-Path: <usb-storage+bncBC72VNFM2YHRBV52VHDQMGQE342N6CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id B80DABCF5B8
	for <lists+usb-storage@lfdr.de>; Sat, 11 Oct 2025 15:36:25 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-76e2ea9366asf5467190b3a.2
        for <lists+usb-storage@lfdr.de>; Sat, 11 Oct 2025 06:36:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1760189784; cv=pass;
        d=google.com; s=arc-20240605;
        b=Bx8aSC2OvZrQobH3u4q3HifLyi+6aHA4tHlddxHphEz/opMz5cUdV7I6i5/ocWC57n
         EZfmUKBw0wTmkQS3IdjBe+D/X9V2ooE1EBAlz0NvfWct6Oasj5CgkBaIJLm4EUVpMA0C
         z43R/EgqDpK4RQjlgk9ESeS0vIeicQK1jvAYm++UwKgdD8nZSrHqLmtOwgpHhKTBC98Z
         CD/WfW91AIqQmDkAcaxTTW0YlGQouLjHkKPkgOngNQ6cEBPM10/Pu9MBtw62jlNOX9ys
         +4z4VKif2t1BKYz6Zs8F6zN2Y1h6ciGnKiwWs5gOWjw8Ugk/NnuBUwYI3ozg10jDKjU+
         PeGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XjcDlfuNCgy/Zj6XfJaYfbFxfTbQl4Y39eeORKCwNQA=;
        fh=TUsEmqh5mdx9GUtzJcTKlMqOD2flEc+Xc2ezIuDXF6M=;
        b=X0KdI7DEAMOgLGPpFU0K9GtGclwf5kcO2OlEex7bQA74AMMQr97BJZGw6QpP7ScOkS
         RfehCExJ8/KxM0we4qq4+hTnX5WS9nFcMK3az2kvIr4aRKkQ0BaNteGNr2h/M2dk12s8
         6ZxIddrtU+WXHjAVZnLDXPHjWKzjhNQ2LnhapMIz9vM2SMnesD6/+wr8k/RuGShw4mmG
         NDipee1AZCn3hSVbFaNlLoy3zxWwoM6Qp+wdo8m92r722sBRuZlhT/H4bD9ghXhPKa2N
         /+97/8BCqp/sUS1g1tZegpwXFPwLEoAR92qmQ2JIeu0kSL1RrJs9IrIahiUepwy3ACYB
         OiRw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1760189784; x=1760794584; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XjcDlfuNCgy/Zj6XfJaYfbFxfTbQl4Y39eeORKCwNQA=;
        b=J0L0WzjTRx6F88HkPq3UAg1A3NKHQmJ+1yQuIqDVYjpyZOF6UVEBC2Wu5xuTTuxgfE
         C34yX6lJXcjtv3ICY8dcTBUb/sGKjPHWKc8CrylDyuvOfmSU7Xf29UYGm8pw4zMv+xzL
         Jw7CXJ61D7MvdLtWi+JcAcpJgFRMiCwfzFcag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760189784; x=1760794584;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XjcDlfuNCgy/Zj6XfJaYfbFxfTbQl4Y39eeORKCwNQA=;
        b=vRohwxiI2/2t1AXCR72oi7TBfaJoqM6pT0c7qhhVEagJ7JtOfA32L90/MpK/XlxDh6
         sdG8n5RT94rnvfk/xwcqNpB+R/lisWBA/RdeMgDzDHM561bHAuj9NT6+8l78/7waW3Ck
         yAV5V0TQ0Cz/ttewX+BH1LF2UPrDK02s4T69rINdMn14RhoZPUq2mWqeWV4Q0eZ0qqpH
         4aIlKamus2ZXIFzLYSyNfYdFrsG0PYRznLAJVVBaS1p5MOAVb617jMxL7auj/mC2ZTHm
         mmXRwkbq0F+FXcwMJeuHTLVw0yG/uMkhlu5XOkhnQmanWuOG1z/Rc13Dl8M4PlNoBdde
         JYTg==
X-Forwarded-Encrypted: i=2; AJvYcCU84IrUKED55cCMlmWXbENkIJ9In1eqm6LUEarUyu83tOysrjSNqZTAK/nh1pvKtUu+Mb3+qQ==@lfdr.de
X-Gm-Message-State: AOJu0Yw2rJrJpkLHlKZNZzxZDB57pZmF/BVRtDqGnZTvbOyEaPBpK1Ol
	zn8hdLKv2vMzcD3ebeU0FjILfZ+G5s5EVq4qh7MCVs4zx8ReOHBfAlO9EbnKEMyK4nA=
X-Google-Smtp-Source: AGHT+IEshtBcF11MLju1+lHihmi45nC3jFghyp8TOU+w0nuXuiKH7BRlfM84QX9EdD7KKVon/vl35Q==
X-Received: by 2002:a05:6a00:194d:b0:78a:f45f:8740 with SMTP id d2e1a72fcca58-79387630b96mr18750373b3a.19.1760189783488;
        Sat, 11 Oct 2025 06:36:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="ARHlJd60dlje6hk8VTNZB9/HnQUxjpw3bU3O8ZxB0+R8Q2tlyA=="
Received: by 2002:a05:6a00:944b:b0:77e:ce3:cda4 with SMTP id
 d2e1a72fcca58-794ffdac023ls2932457b3a.1.-pod-prod-09-us; Sat, 11 Oct 2025
 06:36:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUqLIz28LNbk/Sc6ww/0CmlkYxqhLdTlJIuUhxZL6iw3LMLxFUio1nM6g2uQe84bXBXDqfNP1l87r0mLA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:6a28:b0:25b:f1b8:b421 with SMTP id adf61e73a8af0-32da81f3ad0mr19652739637.27.1760189782086;
        Sat, 11 Oct 2025 06:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1760189782; cv=none;
        d=google.com; s=arc-20240605;
        b=Tr1rkMrvsYLn6SFj+9h8+ulLaZPzCLYwFI0efZ+X2a1aIA5XRwoS0SP866tAHsdgxB
         rNbATXSV+4bAgqCbuReD6iXKqWbzJnUz6zGp/DpgKJVaVRrwFzBcCvUVS6mvLQOxVq05
         TTCI5QkX8J7146WWupO0PCPwwVkifcPMKumToY0gNpYMbIRkLuj5qlKXffYKoVOdY/3V
         cp+euAwZkT8ywynJR4b/hqbWPfVefcbNV8E+1zT+gDTtRdTXa/M3YJErcpz5JRfTgaAB
         eT8EVovF/IIIs2HhwTeqB+k7FmNg3MiKVVhQlg7vHjySdi1gLdseeZck9bZyxvvqPgRi
         qepQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ZoCdK90On4SJ+H8PtaayHxARdIRis7XEh6fCm4zZqac=;
        fh=Hx6L+fhD9Ro8IEiSbNs/HwTfX31mrUR2C544nLFmoII=;
        b=gltciBATgj9YkFUE6PCwpZ2GFBHDBkcgPUTnNFWGbQszUTtr6HUCdoE6ZAGoUauw/N
         0pXhuA1fsafj9jZsXs3FWbm4GkoxgFnMU3CB3Xv6N/bXyuGVQxiJ9jiJFXeo073wunIj
         HrIpBaeVcnRMRo3hPcmWGwCzSnFDIV0rMIeA/JBEZcR61JeNhUdgA8s5AkE7UgzNSt7A
         tHg0p1b6SSJvmnS2JBhbfTZv9kGflqd/0TtGpt0Ddoho+Y8IMsBLPpt9yN5T9Fn5jIMI
         b/yf79OvBhgcFfrl8ksDqvgcU/MtDcU/l+HoY8BQlbM8Ey53guhpNO1nPXwtJB275n2c
         ZdHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [207.226.244.123])
        by mx.google.com with ESMTP id 41be03b00d2f7-b6790461b77si3062361a12.643.2025.10.11.06.36.21
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 11 Oct 2025 06:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) client-ip=207.226.244.123;
X-CSE-ConnectionGUID: 2dRnejWVSDq8kVNahavXrw==
X-CSE-MsgGUID: 9mkm2THkTfmTh6FGQaBpTg==
X-IronPort-AV: E=Sophos;i="6.19,221,1754928000"; 
   d="scan'208";a="154948290"
Date: Sat, 11 Oct 2025 21:36:04 +0800
From: "'Owen Gu' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Michal Pecio <michal.pecio@gmail.com>
CC: Oliver Neukum <oneukum@suse.com>, Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
	<linux-kernel@vger.kernel.org>, Yu Chen <chenyu45@xiaomi.com>
Subject: [usb-storage] Re: [PATCH] fix urb unmapping issue when the uas device
 is remove during ongoing data transfer
Message-ID: <aOpdRAGzuPViOYBu@oa-guhuinan-2.localdomain>
References: <20250930045309.21588-1-guhuinan@xiaomi.com>
 <20251007225718.3c8b2cd8.michal.pecio@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251007225718.3c8b2cd8.michal.pecio@gmail.com>
X-Originating-IP: [10.237.8.166]
X-ClientProxiedBy: BJ-MBX04.mioffice.cn (10.237.8.124) To BJ-MBX05.mioffice.cn
 (10.237.8.125)
X-Original-Sender: guhuinan@xiaomi.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender)
 smtp.mailfrom=guhuinan@xiaomi.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=xiaomi.com
X-Original-From: Owen Gu <guhuinan@xiaomi.com>
Reply-To: Owen Gu <guhuinan@xiaomi.com>
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

On Tue, Oct 07, 2025 at 10:57:18PM +0200, Michal Pecio wrote:
> On Tue, 30 Sep 2025 12:53:08 +0800, guhuinan wrote:
> > From: Owen Gu <guhuinan@xiaomi.com>
> > 
> > When a UAS device is unplugged during data transfer, there is
> > a probability of a system panic occurring. The root cause is
> > an access to an invalid memory address during URB callback handling.
> > Specifically, this happens when the dma_direct_unmap_sg() function
> > is called within the usb_hcd_unmap_urb_for_dma() interface, but the
> > sg->dma_address field is 0 and the sg data structure has already been
> > freed.
> > 
> > The SCSI driver sends transfer commands by invoking uas_queuecommand_lck()
> > in uas.c, using the uas_submit_urbs() function to submit requests to USB.
> > Within the uas_submit_urbs() implementation, three URBs (sense_urb,
> > data_urb, and cmd_urb) are sequentially submitted. Device removal may
> > occur at any point during uas_submit_urbs execution, which may result
> > in URB submission failure. However, some URBs might have been successfully
> > submitted before the failure, and uas_submit_urbs will return the -ENODEV
> > error code in this case. The current error handling directly calls
> > scsi_done(). In the SCSI driver, this eventually triggers scsi_complete()
> > to invoke scsi_end_request() for releasing the sgtable. The successfully
> > submitted URBs, when being completed (giveback), call
> > usb_hcd_unmap_urb_for_dma() in hcd.c, leading to exceptions during sg
> > unmapping operations since the sg data structure has already been freed.
> > 
> > This patch modifies the error condition check in the uas_submit_urbs()
> > function. When a UAS device is removed but one or more URBs have already
> > been successfully submitted to USB, it avoids immediately invoking
> > scsi_done(). Instead, it waits for the successfully submitted URBs to
> > complete , and then triggers the scsi_done() function call within
> > uas_try_complete() after all pending URB operations are finalized.
> > 
> > Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
> > Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
> 
> Hi,
> 
> Was this situation seen in the wild and/or reproduced, or only
> predicted theoretically? Was the patch tested?
>

This problem occurs in real testing environments with low probability
when the UAS device is unplugged during data transmission. Current
patches have been tested and can resolve this issue. However, as
Oliver mentioned in his response, if the resetting flag is set to 1
at this time, it might prevent scsi_done() from being called, which
was not considered in Patch V1.

> I wonder what happens to the submitted URBs when scsi_done() is
> not called. Since the command URB was not submitted (or else we
> wouldn't be here I guess?) the device shouldn't have selected this
> stream before disconnection and it seems that the xHC won't try
> to move data on those URBs, so they won't complete with -EPROTO.
> 

Submitted URBs will be processed through usb_disable_endpoint()
during device removal, eventually triggering usb_kill_urb() in the
usb_disconnect() workflow. This will invoke the completion interface
through usb_hcd_giveback_urb(), returning -ESHUTDOWN to the UAS driver. 

> Will they sit there stuck until SCSI core times out and aborts
> the command? That's poor UX, speaking from experience here.
> 

After applying the current patch, testing has shown that failed commands
in the UAS driver for which scsi_done() was not called after submission
will be completed 30 seconds after a SCSI command timeout occurs.
We will optimize this issue in patch V2, which is currently under testing.

> Maybe it would make sense to unlink them? Unlinking Streams URBs
> is a sensitive topic because it's forbidden if they can become
> the Current Stream, but in this case it looks like they can't.
> 
> Or am I missing something?
> 
> Regards,
> Michal
Dear,

Sorry for the delayed response to this issue.We anticipate
uploading an updated patch V2 next week.

Regards

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/aOpdRAGzuPViOYBu%40oa-guhuinan-2.localdomain.
