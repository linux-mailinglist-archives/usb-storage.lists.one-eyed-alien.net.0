Return-Path: <usb-storage+bncBD6LRVPZ6YGRBOGI36UQMGQEOTZQCPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EF47D5693
	for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 17:35:22 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-1eb4351b548sf3707411fac.3
        for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 08:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698161721; cv=pass;
        d=google.com; s=arc-20160816;
        b=b1N+1UemQFyYj5MTD7NSHcuP6NIUBM7Q/1YNVYDW+Akq74P/AnC45J9SCvTQhyLHOF
         C10hMnULuTjDNqM1ut1JqX8hbkLO0LyUsPRz0ZU3gyoTLKSZjX0MLDae9AmfguPko8Bp
         kBnAN0ck/w1uuI54iilP4Mh160wEWlLFZKjXzGOBZpHFeam9kQACxmuM10MAwsmUjlxh
         nra6ZxDHPOb/MKofzWfw1kq/w71BSNxPUZX97iE+qEjexs9qNjF6AsqVKpGNuccxupnp
         8BzDmRc3/Ffxbc1IAEv7fPimpt27FfQw6cXNnDtEstO08c9yHTfhZ4L3wFJeywAv69bF
         1Zpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Aoez8SOn2TR8CkpYjgC7bL0gOgqf7VhVrgcX3SlcrlM=;
        fh=HTcH9FwWfokSIxcREMnaC56gnwz2mltpvLaBMofE/C4=;
        b=JBi0uq08eGvj7VKE0GAn/eLR2tdODiru+J6IYOGmqYk3eGu1yhDPTp4DkxynLd7Ava
         CqQ26N1w4JE1Qfzstji/cNqL2dLMPQqGBxD3RT0BM/cD6Oz9PDe86ZZfAexiPiDoFJy4
         9mpS3EqBvvJXCKMuOnSHTKx6sopoHISaEURcv9hCjjUo+xwLAdwavsWrQDFoi/F4wblD
         ssF7pMWs7Y8HCf9UbkXc/ecpR4CevPYm9kYHfuwBi1xbz8CO4x/OIxdUjSPq5xcmcbt1
         9yrMxS0glJycSl4GoXoHCpPFXCf6qPbbMH4GHYjdw057hUBWYDT3f7KC0J3QTZOJ6t6g
         bBhQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698161721; x=1698766521; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aoez8SOn2TR8CkpYjgC7bL0gOgqf7VhVrgcX3SlcrlM=;
        b=T8EUCHP2LR6UOjEmAKoWSrgXskOcX+um219Y+ceiBk/aJKmnvKmmlx0aSKcNP67B26
         ytYquI218PCHMfgN5Wi5dKQIyN0/0yxlqdqp5alQcfj7gfz+1cMhWPwlXR2eIt8lr8Cr
         Kd8/biRhEDFAouLra61RjnFnNfmapg0yUUMl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698161721; x=1698766521;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aoez8SOn2TR8CkpYjgC7bL0gOgqf7VhVrgcX3SlcrlM=;
        b=Td1MfQs+VVNk1Z5COifRuT4Bavu94mLrtMxI5/wsxl4JSxWyirgGeWc2iOPrNnW68A
         R9UH9CQTaPaAQHrdC4FGjJKJiF3o67MAR64BH30cjEufLwgXTVs0qKawbO0apOSv57W8
         uijUgDP8W/cT5YSSHjYpRuXmvlLly80hlBHyjaT/N+qRWZvWFLfs5cRWdpVwzFY54Qgg
         6LiSxzfF2JRC7dcnTl6T8S471Q4Z5j319otzyE0UGU/kJN5W/DprJIxLhfQKL52wBtgm
         /TraRCfqE5C/jugTmfgQdb70T5WfOZNYxGIqyoDxZZ/XfJyxH3xtQ1aB4hV0VRLb1xiB
         tisg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyZpsAb3wlj/x/KCsxvQWOJ7F+Mhv0ce9iQFymtasIP4YtaGFrp
	CgsOLWrRox+VoswzVuBw37njkw==
X-Google-Smtp-Source: AGHT+IFvjmkwg0WK0gIPjOPcQzjXv4vte8svtlmcRMtJd4b3HDBhowiHYdu164Yf2OO03mWyXUlj8A==
X-Received: by 2002:a05:6870:9689:b0:1ea:323e:4f13 with SMTP id o9-20020a056870968900b001ea323e4f13mr11469166oaq.20.1698161721042;
        Tue, 24 Oct 2023 08:35:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:4188:b0:41c:d096:9c9d with SMTP id
 cd8-20020a05622a418800b0041cd0969c9dls259040qtb.1.-pod-prod-06-us; Tue, 24
 Oct 2023 08:35:20 -0700 (PDT)
X-Received: by 2002:a05:620a:cf2:b0:775:f798:91f8 with SMTP id c18-20020a05620a0cf200b00775f79891f8mr10989418qkj.60.1698161719982;
        Tue, 24 Oct 2023 08:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698161719; cv=none;
        d=google.com; s=arc-20160816;
        b=QglT3qP9qPNwzZlPiBrDjdQY6bKewXAVTfkwkMF9yK/LIAHCTC0PVlFws6SrZpgYnB
         X6GI9nPD6xVdgkqWBLbecRoy/wckfte1WKT1Sa1smYNZy+wn9dkLH1tUTxVQ8YhiliZO
         ggdjn0sabyNgxxW6wID5kiZoEDs1CGPC+dXo8to/v6Ee2ctU3ddfSG5cdnWpd7a9npXm
         Kw+f0RfmUQYyVpMmkMv1k5AMTWEkSz4/ARvxulLcjAgALJ98zrigjJMQduX7v0a3UmPL
         vLKFZ0otsy1SWExOea9pKQi9OAkP0ry9HrYrYAM68/RvcEZ3V+pmSc3UN7q88zJW2uPj
         KL2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=iPcveMgdBz/HyuFkTozrSwD9LxyuSgzbvSeNZxLh+8s=;
        fh=HTcH9FwWfokSIxcREMnaC56gnwz2mltpvLaBMofE/C4=;
        b=rPkZiyTuBPKLXVSTxhDSfP/aHowiFqrgBll52tonMMQ76vrFfIrNBcO5Jc9FfSKa5+
         aNRpEqIHqqirJJBaeSCLy7z9gsbKGtW/Sd6J241QSJaFBjGSSWsfsT9LiXFV8HeqkCt4
         30qJ18s2WD9Ry5AXuS1REkOPdwHQRU4m+Ji1WT8UgjQSiPVABhrpfLnz57XqM/vcM2Qv
         Xe4PaehLIRyyLb3ig/HrhFRaI+rQPv/MARBrw7Qr2yCY+Cug/PhNWr+RuBv8q50ABfnI
         J460h3Tvt5OA6y7EzvyZ171AbodVeJT6lKRHOI/Le3NbIGUp4yyECZbDSuUHW+/7Tren
         /0uw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id k10-20020a05620a414a00b00778a4a58bedsi7708394qko.659.2023.10.24.08.35.19
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 24 Oct 2023 08:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 461087 invoked by uid 1000); 24 Oct 2023 11:35:19 -0400
Date: Tue, 24 Oct 2023 11:35:19 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: "Li, Meng" <Meng.Li@windriver.com>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
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

On Tue, Oct 24, 2023 at 03:43:56AM +0000, Li, Meng wrote:
> 
> 
> > -----Original Message-----
> > From: Alan Stern <stern@rowland.harvard.edu>

> > On Mon, Oct 23, 2023 at 01:41:11PM +0800, Meng Li wrote:
> > > On ls1043/ls1046 rdb platform, if a PCIe-USB host controller is
> > > installed, and an USB disk is also installed on the PCIe card, when
> > > executing "reboot -f" to reset the board, there will be below error reported:
> > > usb 2-2: device not accepting address 2, error -108

> > > This issue is introduced by linux-yocto commit 837547b64a34("driver: net:
> > > dpaa: release resource when executing kexec") that cause to spend more
> > > time on shutdown operation. So, the 2 platforms with DPAA are not
> > > reset immediately after executing force reboot command. Moreover, the
> > > usb-storage thread is still in active status, there is still control
> > > data transferred between USB disk and PCIe host controller. But now
> > > the shutdown callback of usb pci driver had been invoked to stop the
> > > PCIe host controller completely. In this situation, the data transferring failed
> > and report error.
> > 
> > That's _supposed_ to happen.  By design, the "reboot -f" command is meant
> > to carry out an immediate reboot, without using the init system, unmounting
> > filesystems, or doing other cleanup operations.
> > 
> 
> As my above said, I understand what you mean. I also thought over what you said.
> I am not sure, but I still sent patch to upstream community, and want to get some suggest from more authoritative maintainer.
> 
> > If you want a clean reboot with no errors, don't use the "-f" option.
> > 
> 
> There is also error report even if I use command "reboot"

Okay, that's a different matter.  In fact, I don't know what is supposed 
to happen during a clean reboot.

Greg, do you know?  Should we take the time to disconnect all the USB 
devices during a system shutdown?  What happens with non-USB disk 
drives?  Or other removable devices?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2%40rowland.harvard.edu.
