Return-Path: <usb-storage+bncBD6LRVPZ6YGRBR65ZGRAMGQE7LQOG3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5296F59E9
	for <lists+usb-storage@lfdr.de>; Wed,  3 May 2023 16:25:13 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-74e0b7fe88esf660227085a.2
        for <lists+usb-storage@lfdr.de>; Wed, 03 May 2023 07:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683123912; cv=pass;
        d=google.com; s=arc-20160816;
        b=TOo3oYi4kwfbIX1AqckE5hVpV9SC36Xuhhzjl7xvIxFEcgI7bfzjf2fbbVSS3Rn2TN
         rB7uY+evi2XfNIQ6ifmJk6fHo71oorT8y0CE0s6bBrg+JsVJGQZpZYbrsyyhSxu9PAkn
         zbAwph7p4cBAlUnslkVokEpgeA5R3Lqi5zMyGkzLtdgLJwXgqWoNmg6uvoLGhExs52hY
         GRsRGC+adu6nggD3XYk50CEB30yQwbod0DGW23ei3NaCkspObPfMtOXp8RF+AToVftuk
         0yfMV4Y80g7l2+MRiZLzZ4N2xbAsV1ShA7NLaZc2mQ2oZkQS/F5y0gJhTdSzwsmB63/I
         0Mjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HNNOIdJilXYfOk4J5gFYMYima2ugmGONnawuY+geLgo=;
        b=cnOH8gBj3BzCBIPVU4I5L6UxS8Ba7f3Aw1ce/lOm49VTA77LqksD366W1JJCzz8/ix
         4nK+XcP3AezNNVkjD1mI8sC06fbGYQCTg3/qIhAQfK0ia1svFWE+c0JaYAPZV9n26F12
         qkidU2dJqczN9A+x+rVi7rDCrp69kMoMU/UY6+v2ulguquD50/xKkgUvYHm7f6rC5Lw0
         irCRXl+ottD38FwAAHAA/PYIZnjp50Y6pJLZAUjV1rSUtHKIgaT2HBMrRUCL/PsNtEEm
         4/APMdf3Su6f+rahNRSrGEAAeVcnRH3OS5O4XlRm3wcGgRdya6GoequgJ6wHQ/H6qJTq
         PziQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1683123912; x=1685715912;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HNNOIdJilXYfOk4J5gFYMYima2ugmGONnawuY+geLgo=;
        b=jWxxyyry91hcpxtUc5olvDR9TCBeGD0UmMu/kRP9dvqRkvL8PZtWmovGkx/HJYZKWg
         QRWyyHdwrjgSYdCyusptdAtMlGTRzzVQBn3zfs9cKa1UvTqX6DlOk/FbV4se8JsMbqAE
         SIwtuaxrdYHoFSOuUvZXUzrqIWFt1mKxL51do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683123912; x=1685715912;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HNNOIdJilXYfOk4J5gFYMYima2ugmGONnawuY+geLgo=;
        b=df+2Lzq4ThKnWDLB2WzFXH7HDPqlf1kF70VbLbEXmJ+jJ6vk9vD7cqnlK1EZrmu+Fc
         TjrFqg7fHqXq17useq7GokW97gQNiPeOKFzn0EUzAb/NClie65ct+27FolOrZ6irZU9a
         X1C/FXsGrLN/Pc6iyQFpnFaUZIHL/YWmxifuzjlcbSHk4RhuGND8DUskyio876q4Rt9P
         TwFsKJxqe4X3LkbmIubv0aGvv90b/C6Sl6jPvQwd2BEVwnZO1HJF4qvWWMjiBjaAKVNP
         mE4irKpk62LfTDnky61jsWXuYgijuQg3laOa+xeUtDHPz3GWUcrX7NovUcBkY1fz42iv
         k1Eg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDzV7PLj75ciR2JsH6w+6Z5A8sUWSbP1mCMRSoqefPb9v1Z6S12E
	ieJWMPcGDkGofKXSIUUUlYYPlw==
X-Google-Smtp-Source: ACHHUZ7VQNYSGvx8WbUTO9+MsmEmmc2C249I1lgy/7o7tEaaJxmRhHTVsmPMrcY88R3dPoXoYtsXNQ==
X-Received: by 2002:a05:620a:821a:b0:74c:f9b2:47bc with SMTP id ow26-20020a05620a821a00b0074cf9b247bcmr2835670qkn.1.1683123912144;
        Wed, 03 May 2023 07:25:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:5786:b0:5a2:29c1:b542 with SMTP id
 lv6-20020a056214578600b005a229c1b542ls10525513qvb.10.-pod-prod-gmail; Wed, 03
 May 2023 07:25:11 -0700 (PDT)
X-Received: by 2002:a05:6214:762:b0:5ef:a772:2731 with SMTP id f2-20020a056214076200b005efa7722731mr9612663qvz.11.1683123911400;
        Wed, 03 May 2023 07:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683123911; cv=none;
        d=google.com; s=arc-20160816;
        b=IvwQTc3gT1AGCjSUENDf8kSlmE4eKmZY1yyCrIG80/FImusfOcTmrHZ5DVIZLQ/A0l
         /3lXBf31dKhAfru8tOPupR343SLJWukK5ja1nS8y4y3ncZK/P+NmlcSbwtdDBxu+SOMD
         +GNvXtfEhfOITCsNZl5DcUgiZzlfMXvc6x4foW5SBqbzlss1hZb4JZ5+Bngi0VQcZhja
         +jVz1uWtU8Nu3DM6teXNdYoIckFwKiN0eGyWE8/RVD0e7he8a1FcVmbVWVGdZKUqisOn
         bfngmzNn/YxXVFVUCC+fImE6P2qJ6Nvvkd7Bumt4UtA0azPnxCnkyoMI4RQsWNOWH2sf
         K6tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=8/MSu9SXMuEvOm4SSa7skXMWbJcaMxK4HHhix39NLnA=;
        b=u9uUg8+DVKwYGkL/MGiKbvCva968EUnpBLjsYtaqxGW6F5zjCXr8Ni2OJkuxwUN9c/
         ENUb1kvDRTwpFuGTc9JohEuiInJNxoG6EUXwFrqyXt7RlrwujypkH74dC742U7EiOm0Q
         zEettZdWaZQ/Z0s6y78BRuxn4fxcEuq4/zFALqR1IIu78e9sb9jwbZ+9b0qleLaAfiVA
         A3GiY0V8AeWI0Dal/W3jFgDsn6LK+i7DyLZOlxN7NOHBzAtGKgb/Or5yFFVNp6MGRINJ
         lsolnyIUT29s3zHIKhAatHeaWom2zQlRug9OOqAC9lHzrzaZBrGOyiJktgd1zy75KTYR
         uf9A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id kd14-20020a056214400e00b005e9a59bd9ffsi18141178qvb.368.2023.05.03.07.25.11
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 03 May 2023 07:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 379363 invoked by uid 1000); 3 May 2023 10:25:10 -0400
Date: Wed, 3 May 2023 10:25:10 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: Benjamin Block <bblock@linux.ibm.com>, Hannes Reinecke <hare@suse.de>,
  Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2@rowland.harvard.edu>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
 <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
 <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
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

On Wed, May 03, 2023 at 03:54:45PM +0200, Oliver Neukum wrote:
> On 03.05.23 14:51, Benjamin Block wrote:
> 
> > > usb-storage can do a reset only on the USB device level,
> > > which translates to a bus reset on the SCSI level.
> > > 
> > > And we are supposed to cancel any communication with the device
> > > before that.
> > 
> > Is that a limitation of the devices or drivers? Because then you don't
> > match SCSI semantics for LU reset - which aborts all running commands
> 
> We do not support a LUN reset. That's a limitation of the protocol.
> If something goes wrong you need to reset the whole USB device, which
> corresponds to a host adaptor on the SCSI level.

There is the Bulk-Only Mass Storage Reset request, which is what 
usb-storage issues when asked to perform a device reset.  But few 
devices implement it correctly.

> > on that scope among things. Which might explain the reason/choice behind
> > this unexpected behavior for you.
> 
> For the device a reset presumably does wipe out the command currently
> under execution. The problem is within the driver. It thinks that
> a command is still active. And we are limited to one command at a time
> (on the whole bus - again protocol limitation)
> 
> > On random thought I had: in theory you could implement your own EH
> > strategy handler if the default one doesn't work for you. ATA and SAS do so.
> > [drivers/scsi/scsi_error.c:2285 `shost->transportt->eh_strategy_handler()`]
> > This can re-use parts/all of the existing escalation sequence in
> > `scsi_eh_ready_devs()`.
> > 
> > But that's no short-term fix.
> 
> That looks like using a sledge hammer.

I think the best answer is to accept the patch that started this email 
thread, perhaps with a minor change.  The driver can easily abort the 
currently running command (if any) on its own before starting a reset.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2%40rowland.harvard.edu.
