Return-Path: <usb-storage+bncBD6LRVPZ6YGRBOFYV2TQMGQEYOHXVCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x147.google.com (mail-lf1-x147.google.com [IPv6:2a00:1450:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 7714478A116
	for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 20:55:54 +0200 (CEST)
Received: by mail-lf1-x147.google.com with SMTP id 2adb3069b0e04-5007f3d3293sf2855699e87.3
        for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 11:55:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693162553; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDflyXMxuWTM1+nbnqjqnk4z+s9tMbZDTFGYl7Pl5TjMNaqC8RI+pJA++9u5NBT/P6
         T/r0wtyumuKLeMUTO9DGHW56hUJW/S4HuiHip3yIguoJTPNa6UuHz0SZAcAYelWSbR7k
         uqR1Bbo1L6U4TecSzTCh0CtPhS8pP+wJmIzwBB1WPe6Gf8uprG6imRnJ3OcWGBZVaoUA
         df2AE7ny45ZW6ny/7gViZqRYG50e/cjZSqnwhm3hx92Iw93Hjaus4Lp64WIRtufGLCH0
         zGT9C493S6lTz1610utWZ74hDvjzXRdN8fYYuVeHnQD7/mfLyG9oiT5Fmmmg6ERIs0lK
         RcPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UhTTk5u/xrNVHM08Jxo7ZpdMsoH4LWhNqqZTA2paosY=;
        fh=FH8zCkCskAXn4EMDJCljC5Aqm7Ed1W6hIChHJnDO33o=;
        b=WU4fHP5mn8tvp6kaiZHIAeb2z6V1mXXerRGhk5IVdIVav3FcVvU+9nNVm5SoQJNwaM
         0CTTKX2kXhAdA7eZ5sfY3xlaLSm4G09wbpMSwCIi749ulTgdd2b9X01cOLekgug8/m5J
         FPFGWAvgoucSjXE8HaIiuTSzAW6nEBnF8BJyawUwGY7/TB1VIGPfCiMSq5XwtMcMATQi
         rMB7sYNFK7X1iNJ5pYgy+NVIOPv+cQGD/0enfRdxrngFavy+UOuxnnMYbViJ+3MROrvd
         CViAYLCJ3dG3/WIaaVWHOlnZDbfnD51RHTxu8pmpeBIAZjBdpRoEKilg2yPcZotd57Le
         J/og==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1693162553; x=1693767353;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhTTk5u/xrNVHM08Jxo7ZpdMsoH4LWhNqqZTA2paosY=;
        b=cg9m4CUl9tqsIzdMzSzfUaDF8t8lOLlK48wyePOMfhz9HUD8p8ZFPKJ7/raLf7ygu2
         0n1LbAfoQtzhJfwreaYYG6Zcs7N/RbLIMT1K6v2X0vXCilw/4Yo2pDbPee2TwghAOBOi
         21mgsNibDyJOmLTwCAMhJUfRz8B3wWsXzmy6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693162553; x=1693767353;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhTTk5u/xrNVHM08Jxo7ZpdMsoH4LWhNqqZTA2paosY=;
        b=Mpgodr/jw5cTdz32LmWEkSrTJHOaSQrl0jhfWhoZAajJxt9hJx2+6nyVLRtmFtgu+B
         8oP0/+LY4Y94XchkdP02SRLkF1VPcUehmTipni4Vq+M5sKReh/jcE66a/lyIEhID4ihd
         ZhjZiKMWYe8b1ctO2WzaYkhD40Q/sXw+0uGYHzttKByVLfcpatWxqDwoABk9N6WXkgK1
         vQeo6wcfQzdgDTWh81q1LKAU8vT7zPGhkgzOoUCJfiPsG2UyYTgwlr8OYCz+JlXbadnc
         f8zbLDbsDkZJfNPhutVpFjsHuKCMPkkgTlOuFwaBNgwAHXlROn8I758Q585z5tcosLpw
         LGqA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YydYxl4DfvvQmphIT/gnwnXXBvxl56vyGgyFIhsRTDvh4DMhD/l
	0s0nFPIYAeHnxeVcHm/BydFSpg==
X-Google-Smtp-Source: AGHT+IH2yfLhMhgSOM70RGPoaTPQsqm5rdgbyr7ooLrwvcMhmPgc5NsFTlbHgFaTkbKjbSSGIQrbQA==
X-Received: by 2002:a19:e01d:0:b0:500:8f31:955b with SMTP id x29-20020a19e01d000000b005008f31955bmr9426761lfg.3.1693162553508;
        Sun, 27 Aug 2023 11:55:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a19:914d:0:b0:4fe:56c5:2906 with SMTP id y13-20020a19914d000000b004fe56c52906ls420969lfj.0.-pod-prod-07-eu;
 Sun, 27 Aug 2023 11:55:51 -0700 (PDT)
X-Received: by 2002:a2e:6818:0:b0:2b6:e159:2c3e with SMTP id c24-20020a2e6818000000b002b6e1592c3emr16487466lja.33.1693162551274;
        Sun, 27 Aug 2023 11:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693162551; cv=none;
        d=google.com; s=arc-20160816;
        b=C6KA9OZ+G6kpIkOAfXaycI6zS+J97BeZCC3p0RSSo+/35RZMfwIUNtXIf66JqcDA+H
         3ecF3C+m1V/kAwEF6I7PRo1FM1gVUepdk6qehEoA2oVBSsIoTjfJcCxp1Q2WUAFhblgh
         HvXYvwXzfEQM6vlOsMyo4Nop/WPlgsG2FYlrP+dOm/LH7FQIhUGcLsac0qT8eXKvPUb9
         lWKGbM+Lz6nwDsP7TN7y9r8az24XzBsgF5u5mddQ/hSUPPzhokaAbgqr7+QTcBzycEQF
         4a2oE5ncjX0D7W8cgdpbbM1RaWYG4vpBdkkyI/RUpzL9/+RUsbEKtIkbp1Mrsxv1zHki
         CDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Za2aLRWeMM0piAuwFEphGQfNcKWrLLq4nOKVgZ92kDA=;
        fh=qTdisJEfMqbgJskV0UcI72UIEpNP3qVHasTo27t2Qnw=;
        b=H8MQapcrPjCu51oAYDGoJFXwl+8EZbjEfFQp07WMSBwDUomaXV+e5BJ/FHtulxBTG4
         Iip/jbT/ZZL07Slfexh7ZFe3Dm36/g+nCwb0e5KWZwaMJfBFifMJmJ7mj0OF8+mHniCR
         oVjY1T4fvkQLnsi+b6QXctYh32F3+3D5zXPKFZKnfMVfjrZIErKrABZbKuAFXzWOTF7p
         fIaIsgVv9SRs20yjbSZPYIqgDwkQNlRS6EhEP8WSNvtmdz5KRRJIKXla/WxBldnv2y6E
         ggq15QWD4NLDf2hAo465LPQiqThp+J6LhSgLPa6AG60dSXJL5E2xFrAMTAuZibPGooiA
         PS8A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id g19-20020a170906595300b0099caa5368easi1536107ejr.462.2023.08.27.11.55.50
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 27 Aug 2023 11:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 325084 invoked by uid 1000); 27 Aug 2023 14:55:50 -0400
Date: Sun, 27 Aug 2023 14:55:50 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: usb-storage: how to extend quirks flags to 64bit?
Message-ID: <2d580337-eaf3-47fb-afa7-1006d9a257ea@rowland.harvard.edu>
References: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
 <6f8b825b-bc41-4080-8128-4a6f0a43f779@rowland.harvard.edu>
 <34aa2eea-5417-4e46-91a0-aac1a46a84cf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <34aa2eea-5417-4e46-91a0-aac1a46a84cf@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+64ebdad8@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+64ebdad8@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Sun, Aug 27, 2023 at 06:45:55PM +0200, Milan Broz wrote:
> On 8/27/23 17:50, Alan Stern wrote:
> > On Sun, Aug 27, 2023 at 11:32:05AM +0200, Milan Broz wrote:
> > > Hello,
> > > 
> > > I tried to extend USB storage for the passthrough of Opal
> > > security commands,
> > 
> > What sort of changes are needed?  Where is this passthrough mechanism
> > documented?
> 
> We are currently adding support for optional OPAL hw encryption to
> cryptsetup/LUKS2 (that uses kernel OPAL ioctl interface) and I tried
> to make USB adapters to work with it too.
> 
> I'll send RFC patchset (it is quite simple) where I explain it in detail.
> The patch for USB storage is actually one liner, the rest is in SCSI driver :)
> 
> Basically, USB adapters (not supporting UAS) cannot work as
> required SCSI SECURITY IN/OUT SCSI commands do not work here.
> 
> But we can use ATA12 pass-thru (as used with original sedutils
> and some other tools we used in research; it is a documented feature).
> It works once ATA12 wrapper is added to block layer and USB storage enables
> the "security_supported" bit.
> 
> > 
> > >   and some adapters are clearly "not perfect".
> > 
> > Which ones?
> 
> Namely Realtek 9210 family (NVME to USB bridge). Everything OPAL related
> works, but the adapter always set write-protected bit for the whole
> drive (even if OPAL locking range is just covering part of the disk).
> 
> I spent quite a lot time trying new firmware versions - this issue is
> still there.

It sounds like the sort of thing that should be reported as a bug to 
Realtek.  I can't imagine their customers would be very happy about this 
behavior.

> On the other side, many other USB to SATA bridges works nicely.
> I think this is the exact situation where we should set a new quirks flag
> to disable it. (The nasty thing is that for unbricking it you need PSID reset
> - PSID is a number written on the label of the drive - followed by physical
> disconnect for recovery.)
> 
> 
> Anyway, I intentionally sent this 32bit flags question separately as it
> is actually a generic issue - we are just out of flag space now...
> 
> Even if the patches mentioned above are rejected, someone will need
> a new flag for something else later.

Certainly.  We knew this was bound to come up eventually.

> > > I would need to introduce a new quirks flag to turn it off.
> > > 
> > > Seems that we are already out of quirks flags on 32bit
> > > for usb storage - in usb_usual.h the last entry in mainline is
> > >    US_FLAG(SENSE_AFTER_SYNC, 0x80000000)
> > > 
> > > Adding a new flag will work for 64-bit systems but not
> > > for platforms with 32-bit unsigned long like i686.
> > > 
> > > How do we allow new flag definitions?
> > > 
> > > Struct us_data fflags can be made 64bit (defined in
> > > drivers/usb/storage/usb.h), but the major problem is that these
> > > are transferred through the generic driver_info field
> > > defined in linux/mod_devicetable.h as unsigned long).
> > > Making this 64bit is IMO an extensive API change (if even possible).
> > > I guess this is not the way to go.
> > > 
> > > Could USB maintainers please help to advise what is the correct
> > > solution? I am not familiar with the USB driver model here
> > > and I see no easy way how it can be solved by a trivial static
> > > allocation inside the USB storage driver.
> > > 
> > > Someone will need a new quirks flag in the future anyway... :)
> > 
> > I can think of only one way to accomplish this on 32-bit systems: Change
> > the driver_info field from a bit array to an index into a static table
> > of 64-bit flags values.  Each unusual_devs structure would have its own
> > entry in this table.  As far as I can tell, the other unusual_*.h tables
> > could retain their current driver_info interpretations, since no new
> > quirk bits are likely to be relevant to them.
> > 
> > Making this change would be an awkward nuisance, but it should be
> > doable.
> 
> Hm, yes, thanks for the idea,that is a possible solution.
> It will need to modify all unusual macros, though. Just I am not sure I want
> to spent time patching all the drivers as I have not way how to test it.

I don't think it will be necessary to change all those macros, just the 
ones in usual_tables.c.  And to create the new table containing the 
actual flag values, of course.

There will also have to be a new argument to usb_stor_probe1() 
specifying whether the id->driver_info field is standard (i.e., it 
contains the flags directly) or is one of the new indirect index values.  

And you'll have to figure out a comparable change to the dynamic device 
ID table mechanism.

(If you want to be really fancy about it, you could design things in 
such a way that the indirect flags approach is used only on 32-bit 
systems.  64-bit systems can put the new flag bits directly into the 
driver_info field.  However, it's probably best not to worry about this 
initially.)
 
Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2d580337-eaf3-47fb-afa7-1006d9a257ea%40rowland.harvard.edu.
