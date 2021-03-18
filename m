Return-Path: <usb-storage+bncBD6LRVPZ6YGRBLWXZWBAMGQEGAHJWKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD7734085D
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 16:03:12 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id n1sf29989973qvi.4
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 08:03:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616079791; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsbOF3kB7/rSOxF1Bg99z0kH3MgLeS0qUyx5UkAc8aNdNlT/Cd0zGKNbBXu0Xq9iCs
         Wjj/yDVKBQwaywhhR1HTrS77oRAbS0tz+d2ExiU1Xi87YgEqrLmEWJLJjYa0WHitHopN
         5KXwSdYWngv2YKpXIvV2lb28VKHKL7jG8mvg2zUOdm9vWQxxl9X+pcX6M9g2LLufHPJE
         oSSZDnGgFI8Offfl/EN1gJOK2XeOg2s/AqVhemZdF+bRmM/aUobxbDp6VE31ug8mSShb
         KPxF3i51mJbawpvkRvSZWnMxcH1wBBZArzo6xY7zdeZGY+bpShOUvWjS6PpOOew8nDAB
         e2Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4cn/rb3JDH4a2Q24CqQd1Oqjky8ZIJlZa4G4uWcc0BE=;
        b=X0T5h1zMF2+JopocF6BhWSAOjCC/77OfmCgPGtHOzOvYT98rZIGdU0F/gXyUw1nnKr
         u3g6mKg+K1/5js47GvrBRrS93vII0idjRlxO9O6e3MeY6BtdpLH7gVDskHzOABsQMeuV
         WpRM0l0B2PK/PWBwisHLJ94BXMytInDhxRa11t9YPvsZa5brM9tzqjpcfO3DVaab5EGP
         2Wp8f0jygr6/P4k5LIVq85B1Nd92jlbbrYt+4EH8amHNtUM5QpkmD1yuEYwM8hVe1vIy
         PzMxRqZ2zJnbmDVbsMRIq5w8gUvSwZWqSnaFdniFo74FC4EyVBf8jSUWmiUiXm4U3nbR
         YcPQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4cn/rb3JDH4a2Q24CqQd1Oqjky8ZIJlZa4G4uWcc0BE=;
        b=LP/34iXYVuwfefIcr+/Mb6UlIvDQ4UUdwwyKCcxyRteAirmZwaMsEcEiIwHelKqhBd
         1isIL7036xREyKY93jmweHaz1TxImV/gcn4RBF49TN+uge2YEOk9+qC8hxVDuuEwI0eP
         V9KzW36bIlG/tK54Uk4Z6+IO2k514+na2dZ8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4cn/rb3JDH4a2Q24CqQd1Oqjky8ZIJlZa4G4uWcc0BE=;
        b=IuVVMBLlTMQqKdOKQBD03Zdrj4cy6XvA65MesvcIySRSRE+sTI0GtMT3DD60NEdUXu
         DKbIQnVzIZIYGKUAMoMhIXpkd06GgwB6zqY7fM3hzWg26DXXGiOYjSmnd5t22Pe91+xz
         wLCJ/neSVpIe65ChtTeKSDDeE9gAB227cbobp2Zydl6XEuDVeXpEjZrrFiNU/UcWJrn5
         j2GuugaJsOkam0LrWPdp4sujXhFZ1DVodGJop+7zz1/+gKANUaRwRRqr6oPkmBu+VNc5
         dFCzUhNjEbyCqG5Ewkvd9HLJEqrJXbH73R4poyhSY216LfDAJ9MQfM9+l5tga/obHKUB
         vhrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530NDil2UnMQ4TjDc90kjUVHRyoSjnMTS5Nn8oyT5iHdfSmr1syB
	CvsrWln+y7ODJuZ03OmGqw6pRg==
X-Google-Smtp-Source: ABdhPJxKBBGuTC1/cGHY9gLf4Y0tOkPOjHlMQrvlqbmNHBepE6XjGL1458g1Xud6sQwfRUnDacObQw==
X-Received: by 2002:ac8:1309:: with SMTP id e9mr3943746qtj.171.1616079790848;
        Thu, 18 Mar 2021 08:03:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:7a82:: with SMTP id v124ls1203353qkc.3.gmail; Thu, 18
 Mar 2021 08:03:10 -0700 (PDT)
X-Received: by 2002:a37:c16:: with SMTP id 22mr4746802qkm.84.1616079790282;
        Thu, 18 Mar 2021 08:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616079790; cv=none;
        d=google.com; s=arc-20160816;
        b=jhYQfWJsY7Yq/1QwfgyDasVpuDFAcgr8u1bRvg+2DmGv2VWdx8D87mJEo8en0SYFe2
         vgAsyGal0LPpg06JelRxQnjXAv9hxCbIzUQwXvOrjSo+a2EyzawMjGOObIL2WsQTPGO/
         YZwmnEKdnh6zDwC/DtfgBVgyVnyFtdkpO0kcvJ+U/0svVbTQZNkf8r4iBHc8EFBb9R3K
         U6YT8SNPCTEPZbCeW5gzxM0TDvzN8hrSRmsoIerUAKRPB+BQDQ8X9Xb+OfXIyJP4F0h1
         ocrAHEVYFDhLlyKAPewnSIKz8nm1ahYRy1PPNts2nK5asVKfuMXT4cerCenw77hORT/B
         b1CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=p4YWqBnT01C7wk4JGiP2guZWsWSHF+PKJeSBr5hrDy4=;
        b=hiuwynUxB/hCefh4omekpj7ASwcZ1HmTaVDEyuwLwFpkHBFqPMDdKy7GDcw+sSd6Up
         A7Q3kPu6TLaM+o1vRP9BL3EXpl+u/+kSdAPp3TmIKOKIL4dfsBmMUbSyDYh8acQBqYCo
         Hckok+y0itAMGDusy8h2mYzAxFkuilvbc86KMwwUaQhj/8+yq3GMbQncb/J9y7WMx5On
         ZkL5IVvsTCyAxYq2hz+4N/0Azocv7q1F3wg1j3BndF8COxIYwpucjMNLACapoQtQQjNy
         97y2l+j8zTAbrf7lnSqlioWrCC4Fy0k5XiNlafTDWIyzCD+Xv+/k8mNj1TbX2aTCEzkm
         eUzw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o19si1306547qtk.210.2021.03.18.08.03.10
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 18 Mar 2021 08:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 528903 invoked by uid 1000); 18 Mar 2021 11:03:09 -0400
Date: Thu, 18 Mar 2021 11:03:09 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>
Cc: Greg KH <greg@kroah.com>, zzam@gentoo.org,
  "systemd-devel@lists.freedesktop.org" <systemd-devel@lists.freedesktop.org>,
  usb-storage@lists.one-eyed-alien.net, hirofumi@mail.parknet.co.jp,
  linux-usb@vger.kernel.org
Subject: [usb-storage] Re: Antw: [EXT] [systemd-devel] [PATCH] usb-storage:
 Add quirk to defeat Kindle's automatic unload
Message-ID: <20210318150309.GB527768@rowland.harvard.edu>
References: <20210317190654.GA497856@rowland.harvard.edu>
 <F279F9BC020000F5AE14D9EC@gwsmtp.uni-regensburg.de>
 <C63C44570200006665972EEF@gwsmtp.uni-regensburg.de>
 <B960C12A020000A667ECE9F9@gwsmtp.uni-regensburg.de>
 <B72C58530200001565972EEF@gwsmtp.uni-regensburg.de>
 <0F2319EB020000F567ECE9F9@gwsmtp.uni-regensburg.de>
 <DE3F57520200009E65972EEF@gwsmtp.uni-regensburg.de>
 <474C42CD02000091AE14D9EC@gwsmtp.uni-regensburg.de>
 <D43A6F56020000F865972EEF@gwsmtp.uni-regensburg.de>
 <6052FD00020000A10003FE36@gwsmtp.uni-regensburg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6052FD00020000A10003FE36@gwsmtp.uni-regensburg.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Thu, Mar 18, 2021 at 08:10:56AM +0100, Ulrich Windl wrote:
> >>> Alan Stern <stern@rowland.harvard.edu> schrieb am 17.03.2021 um 20:06 in
> Nachricht <20210317190654.GA497856@rowland.harvard.edu>:
> > Matthias reports that the Amazon Kindle automatically removes its
> > emulated media if it doesn't receive another SCSI command within about
> > one second after a SYNCHRONIZE CACHE.  It does so even when the host
> > has sent a PREVENT MEDIUM REMOVAL command.  The reason for this
> > behavior isn't clear, although it's not hard to make some guesses.
> 
> Actually I think Amazon should fix the firmware.

You are free to suggest to them that they change it.  Even if you do 
find the right people to ask about this, I'd be very surprised if they 
agreed to make the change.

> It seems the main goal was to prevent the use of open software to manage the
> content.

This is guesswork on your part, and I disagree.  I think the main goal 
was to improve the user experience by making the Kindle return to normal 
operating mode automatically when file transfers are finished, rather 
than requiring the user to do something extra.  But that's also just a 
guess.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210318150309.GB527768%40rowland.harvard.edu.
