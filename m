Return-Path: <usb-storage+bncBD6LRVPZ6YGRB4OWRKUQMGQEPS3VIBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6687BCE88
	for <lists+usb-storage@lfdr.de>; Sun,  8 Oct 2023 15:15:31 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-d848694462asf4784564276.3
        for <lists+usb-storage@lfdr.de>; Sun, 08 Oct 2023 06:15:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696770929; cv=pass;
        d=google.com; s=arc-20160816;
        b=andxuHfhy9DepaP4sbi8NYWmUgxlHiVlpMA6WGZX/TfBJ28mRTz7BZ2yLIx+X/eSsC
         CrpV2f5/GWrJwBb5VDUXiouKIDsBOZfMO1leOxK0yL+7kgwarzpFwVh0OQM8gyIW2wC7
         FbiGM2FFTfaBBRtEhdPsUxmUVNrzOIsAdI+bSuTYL7w7n1YU2wnvWaB6dcHHzs95AjUF
         95T0NnwDq6i6HLTXeOmsuls/j1myqpTTsFut+8pBVA3ry1xvVqE83Kh+eMntfDs0BkGw
         qQTqda5piND8Hx8JREOAEbpszg866aY1piiHfGm3qzFvaKb7BVqBCia0b6M3iUr/pmB7
         3rIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jzyxSbTfB79oVSN6PIxHJQ+OOSUqXtvEcqfgTfxydE0=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=GBRSXskVgBGlqVHPdVujKH4N+5CQyRHl6J6+DXql19VqJKCUKoTR5FUbjs8OiZ+mAx
         94Kt/pVGld9gjinidHjp50tyUHVqvqM4aefHbU5sAzldJwzznWfUbMNgF6bJKdtcNDDh
         EgkSRgtOO/x1NbYTRq1C/yhLp8fKo2uDzJF2jmseGAWPvCF7w7il+wRViwgGEvC0NXPd
         w5ion0XikNXzQs0DC2/GqEEysk1fR52buyCDSSJRsfifT+/YljSW562MTcUJxy9RxXpJ
         WYd3BqFKcgtMqzWhklxKpBj2uRV9RzF5OP/A6k4lOiAnFqdHzzQbVvUQ1bpfCz8YgWSj
         T8NQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696770929; x=1697375729; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jzyxSbTfB79oVSN6PIxHJQ+OOSUqXtvEcqfgTfxydE0=;
        b=D8wS0p68Q6EUNyeXewbZBl7H7Pz8ZwqJnwQzQXQYIKSwqsotUxe3+IBhcYVFboTYEG
         d3frLMEvtSMp+ITnD1oTjBAEtY9tms2PvosX6i6Vin82bAGrCgrsCVmExQiLXwWhqMhC
         m3l5l9HwiAAdqY5rVf8+fnIZF1fmUIJN6c228=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696770929; x=1697375729;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jzyxSbTfB79oVSN6PIxHJQ+OOSUqXtvEcqfgTfxydE0=;
        b=IMXLr8aeL/8XpHGD8dDVuXGD3JbuPOUFT1Fro2vuAjDbe4BFgReNE+bSb4SU4/YzQQ
         MhZP5Cx7SS23thKUp8lsRChjSldI2jJ8hug0PPyMPc+EoAUE4A4+6sKjW/8xPVs5Hqsn
         1uPLlVPp7H1rKL862+2A6ojUn/IPd5O1vIclyY9k1wFPG3Sr1GRt6Ia2lwrtMZrAQBoR
         YvhG1BuJBsR9V6gPMjav2Dt7FWWLqOcPBQbGpijzMgW9g+I9Ab+cS5z7M/laTaM+QlvL
         PfF0dpOZRPkk+b/e2BHn20yZ3NLxdLBBNuvsB1wzoiKuzzm9iXv4lwTH/U4S6JXB0T1N
         F3Lg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyOQg/WxfceitbC/CnvNe7zr7e081orf85L3Q2VS2btYVlZIk9F
	jWlxQTw7ESC2KhFfL6ZaNje+ig==
X-Google-Smtp-Source: AGHT+IGykF85v7lQ+6M++LzQ3QVvqxv0/DWEEfXzaEUQMN7gQ1OJB0VYFkt6EFrTvaURPAj+GDvyUA==
X-Received: by 2002:a25:6f54:0:b0:d80:b87:3299 with SMTP id k81-20020a256f54000000b00d800b873299mr11758659ybc.49.1696770929262;
        Sun, 08 Oct 2023 06:15:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6902:727:b0:d89:d9c8:ccda with SMTP id
 l7-20020a056902072700b00d89d9c8ccdals2150007ybt.0.-pod-prod-09-us; Sun, 08
 Oct 2023 06:15:28 -0700 (PDT)
X-Received: by 2002:a25:8b90:0:b0:d92:ce77:b52b with SMTP id j16-20020a258b90000000b00d92ce77b52bmr7451066ybl.47.1696770928298;
        Sun, 08 Oct 2023 06:15:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696770928; cv=none;
        d=google.com; s=arc-20160816;
        b=tzJLAXz8/nAB3285eZHm53mwEsRXBTviJo4b3QFhKBC56XadTrR0PGmk1Y7RFiMjnL
         mjKNfrEhfYf16R1pBW831jpfononpOfCLpi/yBpraSXOV+ZS4883zBUn3JFOGrdJx+OU
         hQeU1L6eqEwxW4ml4f7jvu+o4eLOyV6JC+Jk53dra8Q70aM2k5kljvnoCOA0Hyk0V8xq
         oU70ob2jQbYGiDqA7GDEhggbAAj1x5p8E8ZFPT9ZD6xqVBvOQAmDygsJAjiQEQKucSFz
         vl/aNcDZkPqh2QGXhQ5mrHMFD0ZaXc97vnHUB4lKKLcq9z37ZXwlB98cD5v0F+MOIGmr
         ClCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=e8wqCgDCicxdjbORAcOTd/1sHx1cWNZXJ+p9NCN+Cz8=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=BNcDgGYAJFJSfj9NbFhCrJntJhg6h+lOWZ6CZML8QbqRo9EuGVEzks8MYTGy27Rwa0
         wKtfOk9mL0UQeO+fk5ToGCVUBAkvuIheE8UkcwJdzni9+IoxGK7BcFJ0M1+kTYVjBlQ3
         sQsZOodJqcWBqVs9WFNa8xfyoXT1exNXDFighzEVADP3Z1axR87nnxyUIYIa2GTJh3VB
         kUtuo9uhvBM0gSYvMXJTHygX58nuqCdwh7MFtCqvpE6E3RcXlfWVkrUc1PhAEjupCAeg
         3ojCZb1UK28fsklnZbwhs3u6NDCsO6wrdtRvj1PlMH2CJX+0YQnaOYWSRJb76+0ZPjch
         m5gg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d24-20020a0cb2d8000000b0064c84ce3e14si4788323qvf.72.2023.10.08.06.15.28
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 08 Oct 2023 06:15:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 109736 invoked by uid 1000); 8 Oct 2023 09:15:27 -0400
Date: Sun, 8 Oct 2023 09:15:27 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 4/6] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <a80f9bde-5969-498e-8dcf-9af9848d9c2a@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-5-gmazyland@gmail.com>
 <65bd429f-6740-4aa6-af00-e72d27074115@rowland.harvard.edu>
 <e71d958f-8954-465e-a296-c09763d0e3a1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e71d958f-8954-465e-a296-c09763d0e3a1@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
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

On Sun, Oct 08, 2023 at 12:41:42PM +0200, Milan Broz wrote:
> On 10/6/23 20:44, Alan Stern wrote:
> > Okay, this one is a bit of a mess.  Unavoidably so, I'm afraid.
> 
> yes. What I need to know if it is acceptable approach (I spent quite
> a lot of time on it and still have no better idea...  At least with
> a patch that is not too invasive).

Yes, the basic idea is acceptable (subject to the comments in my 
earlier email).  In fact, it's probably the best we can do, given the 
constraints we face.

> Here I compared generated tables with old pre-processor generated
> and it looks the same. (Also I keep it on kernel.org branch, so
> 0-day bot reports obvious mistakes.)
> 
> ...
> 
> > > This translation is unnecessary for a 64-bit system, but I keep it
> > > in place for simplicity.
> > > (Also, I did not find a reliable way a host-compiled program can detect
> > > that the target platform has 32-bit unsigned long (usual macros do not
> > > work here!).
> > 
> > How about testing CONFIG_64BIT?  Would that not do what you want?
> 
> Yes, that was my last idea too, but I am not sure if it correct (and I have
> no longer access to more exotic platforms to check it).

I'm reasonably sure that it's the right thing to check.

> Also using kernel config defines in host-compiled code is tricky, but
> it should be possible.

Yeah; I'm not certain about how to do it.  One possibility is simply to 
parse the .config file directly at runtime, if the Kbuild system doesn't 
provide the CONFIG_* macros when compiling a host program.

> I will try to ask my former colleagues, though.
> 
> > However, I agree that it's better to keep things simple by using the
> > same code base for 32-bit and 64-bit kernels.
> 
> Yes, that was my plan for now. So you want to keep it as it is?
> 
> We can add optimization for 64-bit with additional patch later, it should be
> pretty easy once I know how to detect that target platform really has
> 64-bit unsigned long so no translation is needed.

Yes, I agree that this is the approach we should take.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a80f9bde-5969-498e-8dcf-9af9848d9c2a%40rowland.harvard.edu.
