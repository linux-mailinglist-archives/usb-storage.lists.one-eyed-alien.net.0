Return-Path: <usb-storage+bncBD6LRVPZ6YGRBP6RR2BAMGQEJNVYK6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id E77F332FBB1
	for <lists+usb-storage@lfdr.de>; Sat,  6 Mar 2021 17:07:28 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id g18sf4303056qki.15
        for <lists+usb-storage@lfdr.de>; Sat, 06 Mar 2021 08:07:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615046848; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/65crnI7rLC47zuxJP786h9DsyAWOW8haD1U8V8VAGIOaGImAyNLHH7ABSdGvkVpM
         cdAYesYcyLV5p5r6jePgRZkmXuD/Vdqv3XIfyh0CrbMcWuPFlLgFRGPKHHXFa01yalFq
         xnsp2VrkMxMKs1mnv3ZpKfM8kMwBKPwSay3poP88K5uzlsZc2vJ0OaWDh2y+IJGQgg3d
         K2zixl4ie048Gfo7axt7krAaLoYVqZFhlIYSkKnH9oqUWcoqywGIYCfVCbw4hmFX/Rq2
         6nBjHJXctLuIw3UTfqknQmLmlg1RL6328on1ky9RHM0OlzN9zXyqBTiNiQIwweogpJTV
         wqzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Fhfyo2L9Rm6mPUBZJ+AIpfTzUQZmFK72yYhDFkHkIds=;
        b=lV2dScQS2kf41Pw3WSPVDp2MdhmyGZOFeR3ognWJLNIueOD5b/JITYLG50LOoonPPZ
         ysub9eLyqBv6rdQTrSeLfWBwI0Uo186ayQOFbCTpv5vczxozgS2l3USQ0udMivdNm7nd
         /akDSZka5mzW4DMUszHgXb5aVA5Qdl3IbgBx6cNFFnE38v9fbSI2qKumtbHIOyyr2KSa
         LyXgHbvijX3iG3/H8D/QqTjLA8S9Xw0/YNT7ENmQSwV69WHb0tswEE4FcC6GFXhffxa1
         9uxjyIm1lJ+vMxhYiQtJDUnz3ICLYpkGGhOsTU97lSxiumGjDGGKxzzcpUJXwXYrDQGq
         t/aQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fhfyo2L9Rm6mPUBZJ+AIpfTzUQZmFK72yYhDFkHkIds=;
        b=E2uJXaX8MRkOXiAH5D/Q/jnfbt37/YlhwKq/mIuDQ/A86vgY0MU+tjHNAV6oWAQlmS
         pmpzKnFCgvspAtCz6zDaDeFDd60UpR8S8VozzAYnHj9wSyQ/bXjsJTOufmHOW6Vbz1SJ
         kweK8i+qMDXzvAsGDdho+tdsRtWHKQvijlU9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fhfyo2L9Rm6mPUBZJ+AIpfTzUQZmFK72yYhDFkHkIds=;
        b=BJk/zC1DNGaEtFFff/qVPskjDlsswUbHlXs2mHGW0iGR0WszXIAhMlLS80bi9j+bwi
         6FjXVNtfO87BTg9QZ1qh9BZ6+LdFY2naoUiWSCRNqL+oIwvn57WamFxGeAaIfoQ5TB5l
         vTyrtrVMccOi25PS9Nd68f2XJBzSFJFlsHOSLH7XyLCz7x/nDC2TXHVUwFWRZJNgrZpU
         E1BzhZf5/8uR4dHPkAgtp5Z7/qAJy9NPP9E8epZXtulLqeLoTsLK6zCcg6RNx/HoUb6I
         4tg5cgyYLvFja6Lj+iHoZ5oW/Yo2T16AjmQYQTeOD2Nf3VTA4hkMmhHkaODeD5zinw2I
         f2Rw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530SiQ0N18iJDdBtXsrSQ+5KC+5nMduYYlzLeKThw9yQ6lbr5GEM
	YidJcN0ZSLtimjzXDYs8FYqn6w==
X-Google-Smtp-Source: ABdhPJyZDpL0z2cvhf3L5FI16zi7FSxg/DqjLVFOhX6h1dIKJzOtQjv4/bhvaiHR51y1ncxFYD09Cg==
X-Received: by 2002:a0c:ee89:: with SMTP id u9mr13830677qvr.40.1615046847699;
        Sat, 06 Mar 2021 08:07:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:b642:: with SMTP id q2ls3201661qvf.8.gmail; Sat, 06 Mar
 2021 08:07:27 -0800 (PST)
X-Received: by 2002:a0c:fdec:: with SMTP id m12mr13860196qvu.11.1615046846998;
        Sat, 06 Mar 2021 08:07:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615046846; cv=none;
        d=google.com; s=arc-20160816;
        b=IavApfTUqjVvWvESdkKFDnZV0iYnZKYnV0SoEkuEzj1LjUdOnh+u61HS1hHOSzZ7kF
         v9AvCU8eFpJDZNX0u3L5OVUYJh0TCS2HBpFGEsROwmDRKQo9aSsQ1G+0w+Q/8VK6Yjh/
         /H1qOyN50Qw5JsU0xB8qyIqU6OsPhUffCubnqUmLc8KFiqkQD459C/jls4vgTiXQGsov
         0CeZbUjtU/GTzE1r1M8SSmxZsQqtGtR9juvHKn1onBxxxMk71YiznQ/dvctIAUaEW3OH
         zoz+nW3UClwWFcT7q+rhGr+Td7OwiHIC+3aQyqCMAcZtRofeNKzXdiel7t7DA0rgt7o8
         NoIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=uJCeHorki9IKSXNWYgZHJnkHk+aUUohmVUU3EsJiz38=;
        b=y9yw64+67EDiA1FVMRV6ZIbw4MCrVdQvV+cRmKdPl30+rFA77pJnjOUmKkOemua5dh
         3Mp0tEGqLDg92TZB2VsbKLWEv09cXCd1ZVsiS34NLhdUmLYZCAEfn5zgnJp3UaUP5ko2
         HLSIvMW97PdZrmYUt4/aUyxTvonOvuczTBQ58ErpdVHgjADW2LdAi0ZiBZIJnhjmoIaj
         6y3adbiK4hEY/qG433qDR7q1Gy0hXIpMivySHrV3Vj4eAZCWz/QfOcpddvAZySJ30Bbs
         ZuZ2FiRObVr3h9MZkY9FPshNOxjSegOYcYW8ZCg0GVJ6Ip6FPb92wzKLNUMeoiJBh7+8
         hRFQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id e9si3218584qvv.205.2021.03.06.08.07.26
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 06 Mar 2021 08:07:26 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 74647 invoked by uid 1000); 6 Mar 2021 11:07:26 -0500
Date: Sat, 6 Mar 2021 11:07:26 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Peter Chen <hzpeterchen@gmail.com>
Cc: Matthias Schwarzott <zzam@gentoo.org>,
  USB list <linux-usb@vger.kernel.org>, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210306160726.GB74411@rowland.harvard.edu>
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <CAL411-qf+c_CB4cL=2349QqCCYimOBCYxXbsOfLbvVYOg0294g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAL411-qf+c_CB4cL=2349QqCCYimOBCYxXbsOfLbvVYOg0294g@mail.gmail.com>
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

On Sat, Mar 06, 2021 at 10:19:54AM +0800, Peter Chen wrote:
> On Sat, Mar 6, 2021 at 3:17 AM Alan Stern <stern@rowland.harvard.edu> wrote:

> > Is runtime power management enabled?  Maybe the Kindle disconnects
> > whenever the computer tries to suspend it.  This typically happens 2
> > seconds after the last command was issued, which matches your
> > observations.  If runtime PM is enabled, you can try disabling it.
> >
> >
> Alan, I think you may be right. It might want to support the feature like
> kindle goes to suspend after the Windows PC
> enters suspend (but VBUS is there), the Windows PC may never suspend the
> bus if a mass storage device is connected.

That's possible.  I have never tried to measure the bus activity when a 
Windows host is suspended.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210306160726.GB74411%40rowland.harvard.edu.
