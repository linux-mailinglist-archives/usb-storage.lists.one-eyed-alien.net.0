Return-Path: <usb-storage+bncBDTKFFUOY4CBBN75SXDQMGQEBKSO3AQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x146.google.com (mail-lf1-x146.google.com [IPv6:2a00:1450:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B4DBC2B67
	for <lists+usb-storage@lfdr.de>; Tue, 07 Oct 2025 22:57:29 +0200 (CEST)
Received: by mail-lf1-x146.google.com with SMTP id 2adb3069b0e04-57a898f0932sf3885856e87.2
        for <lists+usb-storage@lfdr.de>; Tue, 07 Oct 2025 13:57:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1759870649; cv=pass;
        d=google.com; s=arc-20240605;
        b=jdfP/C5bSM09CMTe/mGBJOGhho8ps9dWBU+6wt7h8PZwsImEmwZFqjsE5WCchEE1YZ
         5gm5YZyZI1CSUtWt2p0RzoI7V/MWJ20SorRtYkq+iwN58YyhdWy+JtuFwmhL5saEoQlw
         5jjZSqd5vC9pQsbe9axQZP+Gm7R1tkJiyfitfO4g10faNelF9aH37OfDR8hog+jPdRlM
         Zqv8al2Cbkt8IK3uFm5ZZk44xD/+q9KQtwq9qfve0+hzU4QIP/ECq79VW24+6fszNJ1+
         36VBSj6x2XOxbV5RO77AMO7eKC01gtjSTHQJ8EL9bxC3M9UTGKuQu5xheU9BytjdvzWj
         mmpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=TdS9/QG0W6+AM1OC38ymykMfi28ihAP7Mk/JtW9vCTw=;
        fh=AdoazTh5Oa25inLltLTqiew08gI8QZRyNWKEi3r3Glk=;
        b=hPEkKLq0+EZG9J3oTC4aaidRkZWwD+SWNEXOA5EBCXPHbpT7ir59rj5rx6860+vxCF
         yfgqETB7JBvxgHGoDnaZ+I4CfMsG3yv0HhoQM7EXEOfZAC7Y3GhwHl3iJwq28YccObdM
         EYxe1bdujnTDEOBpvLHmw8fyuKgN5Oaqs+apuQzPI8+v38bCNq1Wgytw9XBvLKi6dcp9
         MdRZrJW5b+l+0BRhiz6RjYX78ud+as1qIDGiVaAX9AFmu5LLTW1rtlch54qhGt43P1x7
         Un4FlklbbSK0RFuetQXTHqOJIul00dGB+n8Z/d5uB8oDKYuxJP1S8Ho/mSvgfZWgd45d
         sEDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OzBE4hPF;
       spf=pass (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=michal.pecio@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1759870649; x=1760475449; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TdS9/QG0W6+AM1OC38ymykMfi28ihAP7Mk/JtW9vCTw=;
        b=ZYi/aGAKLr0tuDeqyAnvD8U0g4Ae1mI4Ric82WLFEE+VZXamgF55XdgL4Bop3GT1cf
         fhMp06APJoEt8SeXBzdIsyZSB0rVHODTQhr64PLPPsp8dZcLE+hMXr+2MfSuepgm9jw1
         w+H7N+hRnY26Mi8InULhHk6XJR8Tn/ss6D+t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759870649; x=1760475449;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdS9/QG0W6+AM1OC38ymykMfi28ihAP7Mk/JtW9vCTw=;
        b=pk/F1WF/muHcB06auUkwfYmuhEmm+bJI1ofhCOhy73MkuGh0jeuR+1+YTgSb1Se34p
         +l0GBiN3lgk3O66CVgvxlW7AD2kBkk2FJc+Deui2hBKt6ub28vEm72Er1roJ5lot0XDR
         SPjz9I+d0gIkMYQa7Iwv/az45SMpL4RLLokEkXeF9RBISzJ94kn/ae8VS1iaG0UFiUXi
         D/puJqmaxTs7F+iCPyW4aYc1cAqY3wqdWmAgIT6Zo7tnVf3nlcKfG7U1FwA2nc3SuxFz
         o0LNycqMj2dsO+0L5VHA3/wnO5KcCabKcBH0pfjyGAJBCfT/TGODgqL1p6ZlJrDcQsu5
         v8dw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXy/X/WIA9Amd3szmBl5zq4ucPbcV+GRnMTrTghs/ahnXCO+nxQidL83wxA8US9LaenUdeFZg==@lfdr.de
X-Gm-Message-State: AOJu0YzZcBcFxv/3KvLnjaM84Tuw/2BKbRVMWXnKROFUCZ36ALsnqpzn
	bgouTqjBEcs+XOMLKKo2inYKhRUTOtnBcZY/+XxXfe6DfMoXOa5KfHJB0nhPDzouid0=
X-Google-Smtp-Source: AGHT+IGsbyPvFeXVnGTOaSYuFhJc8xBBQTS2cyR0sRLkippaxMz4tTODBd4cL3+SOtIOqbp1vgDu4A==
X-Received: by 2002:a05:6512:234e:b0:586:5c83:beb1 with SMTP id 2adb3069b0e04-5906dae55aamr273082e87.38.1759870648595;
        Tue, 07 Oct 2025 13:57:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="ARHlJd5kq3Mz26Qme/UQ4NP45cc/HnXDERPQDG0+P1aWqHoOpA=="
Received: by 2002:a05:6512:23a9:b0:55f:697c:f9b7 with SMTP id
 2adb3069b0e04-58b010bc0a3ls500423e87.1.-pod-prod-06-eu; Tue, 07 Oct 2025
 13:57:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWJ7Ns2B+1YYnIKBibnW9K1YfxAKGctOhhqaui/iR40EReUAJr1aoAaJewbQs1yiEvLxpozWQzpOeZ1KQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:2c06:b0:58a:92cc:581d with SMTP id 2adb3069b0e04-5906dafd171mr288623e87.50.1759870644072;
        Tue, 07 Oct 2025 13:57:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1759870644; cv=none;
        d=google.com; s=arc-20240605;
        b=O8h6cH8SHe4XQ5L+ScmP7NctnFlzGJ7rJGcHyPMd3o1Yrpbv9DNbZWt0iVoJ2PJ/jw
         iEwexeDj8CBg3Nbxm+Ziq6N3YtTDGztbO39nh+9iqPS3nkiSOHRH+evwlj9OyL1lZgKt
         T2SNvFMS+X4hkXR6P1F9jtRQ6Ilw+Y7RaFwvmTjcSgS9fBkwX8MUCdRSCeSX8t/5SCyM
         beod91UEt4Y8LvlwdM81KJQuuqTO9LxSgCc8YeuyF5/CL8pnINOuEcn8JBSgWX/uH2V1
         Dw2k74TM6zzwjAfnEPa7sLNNNNLQmzheBaI2DO3FFuVL6D33YiJWrkkizflpX7iIf0VF
         unoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=g03JkHUsqdzLl3r9exUSIw17r9a2Np//6olnzHZA6Y4=;
        fh=NOQZsm3i0+725itrPNijUjPVSkbe5Wtl+zoEzf9GEQA=;
        b=jHhn3QorplM5+IdqztntHDJsXflBZZsGj1bybO7siSb9CnAeuPtgmXEp97zbZG8JYq
         anDO3HEpilLYpLZEhZUkf9fTTQ3zZKivjrclA4rsmmCqut8ocIT5dgpaHp/p6ym2/BrO
         n/IgVceuO3FAhL+9bttQMnlAh20mujJ1f7IfqgtkoL9L7zrCIKF5bGYbDh4XbGbLi5Ky
         U2ruv9jCXll8Wn4dkMoKkKtieLULwoholGO4KRH4R2eGT+kDPdlRMjBsgAIaNEY6A3EO
         5oPxZZIWiuIbP416Xsq6+TQlj5bH4+YyT1APNDvDpK6xSHuslsdIyhvDmStgOkpj4pWU
         dJRA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OzBE4hPF;
       spf=pass (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=michal.pecio@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 2adb3069b0e04-5906d25b9fasor193430e87.3.2025.10.07.13.57.24
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 07 Oct 2025 13:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXZuF4u/Z3a7cuW+FM19+17xM8C4ZNsiIqCHoUeN9O6KQDJDmcHEFm+nW5bd7Y+4coQlxtu1gFJlwfnOQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncszAepPUBD5l1D5fC37MmIhhW+jXmOwm7QxCDtnLa8fYA0NECSOkQaKKZT8DSG
	az8KMI3CZA5hYZ9mZX8vUVOJyiWPb0hifOMXD7u1QiXpwctHXENkOXbpfQ6WZpIyv5ixM6ouR99
	TKh20vAPpjxHXwiXp1Dh8yxcvCe6GzBWnx3MYWDmK9Gyt36gpxhUeK5VC9s8fb7N0iL5S/r5U28
	wDEsgegtBth3GYc6BkbehoEVnl9OwhcUPbXE/uPhzvFFHXAzKvDFUt1I8IldShcUkJtDkBYOJbn
	5ftxEsQvBu8YCwlH0GaPvxL/hWWI28MZIdRBSxVtw0LukxEOZeDHmMVDKqH6xlx+okKhaCMFrOK
	qFVrWnp7V4Om2qH6/jyDsZ4ct+e16qrY80T4QF212laLT+aEoB3CilBxXRj8=
X-Received: by 2002:a05:6512:398c:b0:57e:4998:95ce with SMTP id 2adb3069b0e04-5906d8ed6famr305072e87.35.1759870643322;
        Tue, 07 Oct 2025 13:57:23 -0700 (PDT)
Received: from foxbook (bff184.neoplus.adsl.tpnet.pl. [83.28.43.184])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0112462esm6473271e87.3.2025.10.07.13.57.22
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 07 Oct 2025 13:57:22 -0700 (PDT)
Date: Tue, 7 Oct 2025 22:57:18 +0200
From: Michal Pecio <michal.pecio@gmail.com>
To: guhuinan <guhuinan@xiaomi.com>
Cc: Oliver Neukum <oneukum@suse.com>, Alan Stern
 <stern@rowland.harvard.edu>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
 <linux-kernel@vger.kernel.org>, "Yu Chen" <chenyu45@xiaomi.com>
Subject: [usb-storage] Re: [PATCH] fix urb unmapping issue when the uas device
 is remove during ongoing data transfer
Message-ID: <20251007225718.3c8b2cd8.michal.pecio@gmail.com>
In-Reply-To: <20250930045309.21588-1-guhuinan@xiaomi.com>
References: <20250930045309.21588-1-guhuinan@xiaomi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: michal.pecio@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=OzBE4hPF;       spf=pass
 (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=michal.pecio@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=neutral header.i=@lists.one-eyed-alien.net
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

On Tue, 30 Sep 2025 12:53:08 +0800, guhuinan wrote:
> From: Owen Gu <guhuinan@xiaomi.com>
> 
> When a UAS device is unplugged during data transfer, there is
> a probability of a system panic occurring. The root cause is
> an access to an invalid memory address during URB callback handling.
> Specifically, this happens when the dma_direct_unmap_sg() function
> is called within the usb_hcd_unmap_urb_for_dma() interface, but the
> sg->dma_address field is 0 and the sg data structure has already been
> freed.
> 
> The SCSI driver sends transfer commands by invoking uas_queuecommand_lck()
> in uas.c, using the uas_submit_urbs() function to submit requests to USB.
> Within the uas_submit_urbs() implementation, three URBs (sense_urb,
> data_urb, and cmd_urb) are sequentially submitted. Device removal may
> occur at any point during uas_submit_urbs execution, which may result
> in URB submission failure. However, some URBs might have been successfully
> submitted before the failure, and uas_submit_urbs will return the -ENODEV
> error code in this case. The current error handling directly calls
> scsi_done(). In the SCSI driver, this eventually triggers scsi_complete()
> to invoke scsi_end_request() for releasing the sgtable. The successfully
> submitted URBs, when being completed (giveback), call
> usb_hcd_unmap_urb_for_dma() in hcd.c, leading to exceptions during sg
> unmapping operations since the sg data structure has already been freed.
> 
> This patch modifies the error condition check in the uas_submit_urbs()
> function. When a UAS device is removed but one or more URBs have already
> been successfully submitted to USB, it avoids immediately invoking
> scsi_done(). Instead, it waits for the successfully submitted URBs to
> complete , and then triggers the scsi_done() function call within
> uas_try_complete() after all pending URB operations are finalized.
> 
> Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
> Signed-off-by: Owen Gu <guhuinan@xiaomi.com>

Hi,

Was this situation seen in the wild and/or reproduced, or only
predicted theoretically? Was the patch tested?

I wonder what happens to the submitted URBs when scsi_done() is
not called. Since the command URB was not submitted (or else we
wouldn't be here I guess?) the device shouldn't have selected this
stream before disconnection and it seems that the xHC won't try
to move data on those URBs, so they won't complete with -EPROTO.

Will they sit there stuck until SCSI core times out and aborts
the command? That's poor UX, speaking from experience here.

Maybe it would make sense to unlink them? Unlinking Streams URBs
is a sensitive topic because it's forbidden if they can become
the Current Stream, but in this case it looks like they can't.

Or am I missing something?

Regards,
Michal

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251007225718.3c8b2cd8.michal.pecio%40gmail.com.
