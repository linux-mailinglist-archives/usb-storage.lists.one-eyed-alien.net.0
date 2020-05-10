Return-Path: <usb-storage+bncBCUJ7YGL3QFBB3FK332QKGQEGJPREQQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7EE1CC709
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 07:47:28 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id r198sf5942446pfc.8
        for <lists+usb-storage@lfdr.de>; Sat, 09 May 2020 22:47:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589089645; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELi+qOBBaUoEgio/1PT+PSQHOFt8enlPjJEz3U3WgBONERNjeTbeTJWzAo+ZI2UrSb
         J5Zq3uKPE8U1Om1sza+rbkykjqbNaq8EbYgGL1I6gS5zMO7gy59cZh0O4RmOKg0tKxxI
         7p9Ivkb1GThUN5ALH5+qBOsfeTDR22Ko/wZS9y9PdMPho/PHlFBTwqHeMTpx59TlIqeO
         R80EV0evhqD4vHdoDQCN5DpuvWfLGdGPGViisHpnoxL+hMX8nLFBjweSu7VRO4fJbd63
         anvF4KnghA3j+RyqTn7qVzNMhCArwsyCQM3/G/v2uG3eONGRN9HzDhz5AFscSjcmwlQg
         DyAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0XxCm6JCv34o+ot8G0GznI420cTpae1e9qqmZIUrJpc=;
        b=lME41wqASqfWg7sWfwrDLqZumfY89UQ8LkolHuFAC4nNdhASU2Z/oquSyO1EmHUESH
         cV/6oJFlQyBKZages3ulEOGmpHltepZs2Z8nVSqWfvFFbV7jZWjYDao94fH5ebL9KsCU
         mEAY6TZcw31pGIYaxHJPG4Ew5Q+32taPouAsTOywrP/sc6C3zdSDUhPUZkTG2DbrQEXL
         Aoa0KQhhb98XtNGhC65gbaiJvIY+4Kwm1atrhL9yuXPVlEe+pi878NpzD8KqEzFRK/nl
         b7wdyReGrQkbuCc1/3IdcQ847lujJh2/+LsE3dXjb020aWaLHjHFQhI/NqcGP+czUTu8
         WdNA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zxysiI+G;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0XxCm6JCv34o+ot8G0GznI420cTpae1e9qqmZIUrJpc=;
        b=aLRmDYJyNMq+OkAZOT5Uk3eXldBknlYYxMyxIt/2Ulp2y4KxmIsZRQ8WA2DPIXazYm
         b7Bc/dbtGQe2b6BiLGL8uuhoTKUBf6D6T+meR9YODMMY8W4kWjtHgyRJRzcHV8PTGEuj
         sRithD95gbsS67SUR4IK5joPgfGK75SOFUf68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0XxCm6JCv34o+ot8G0GznI420cTpae1e9qqmZIUrJpc=;
        b=BdQHWsu/3eB4QO1nBTgPZt8yMwCPSq8m23wT6+EX92Iqotm3o2SZF3MSLOdARSW82K
         eQjvKfIDCVk+lzuFH2SqQcZdiJSqV+IKXp6jhy5ToLtvaiJRQ6oDboU7Npsqu/rx16sd
         5vPzUL1tujxUSNwZfgGCq85sJx1l9LQ/aFzX7Jl421t7X3PWA8b5Wo3TumwWxOwPw4+K
         mJDnXNLqYFOAFgUDWMPK3e8Rvxht19kmLAgNpWAIiteEirkhH9CL884qOLq1j+SYqBBR
         wLArhtpYsTcw/Q13dCHXyIoUx4gyfvcdHul9NxQFNXmse1XgEQkfQmlpjO0GMzCOcc62
         K5sg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuYT+hR0eiMw6q6c4kgABHeUjzL12koxP9DdCPEJxSfhCUtXhNqn
	+1cufZtlEBgyIHPBjJvRT2QhKg==
X-Google-Smtp-Source: APiQypImnDyk2fGL96IsMr+h+wwkCSdRwJ7DY6q3f8VFDUHD6c2fAVy69B3+DkIALQ2UVtOnDnpZFw==
X-Received: by 2002:a63:1103:: with SMTP id g3mr9384639pgl.206.1589089645282;
        Sat, 09 May 2020 22:47:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:1657:: with SMTP id 84ls3579747pfw.7.gmail; Sat, 09 May
 2020 22:47:24 -0700 (PDT)
X-Received: by 2002:a63:ee49:: with SMTP id n9mr8930796pgk.279.1589089644668;
        Sat, 09 May 2020 22:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589089644; cv=none;
        d=google.com; s=arc-20160816;
        b=ecKOOjahzSXfMBDmL4kYQCiAim7rC5CTCKrelpNOGNJ5k0PZjqPqdyRB7ovRE8ZcDV
         YNs8Ko9QXk9B68X40TkXQnZTdDa9Gj10qOOzI9VJfszOwanANjqY6iMjIe9Oa3URdQAV
         WSrScgto3Pe0b/w2M68uZylGbQ4pp/NqgFCbtRM0LbvGcw+VQPc6seSXgPl2Ifo3BUlz
         Yhxkwg0YJ6vy5GhQ8mH2PQxHadAyK2dVW4cjtHYZONwwq0/AwBVeYmCB9tO0ZbVSsMkk
         MQk1t/LTz1szhZiSUsQGNR1P8vqLZJxh0U92Taq+3J1q430q8qo8VpZoFdRYfWSac/iK
         1qsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JylSMno6VEkDV1Ob//9aD3+D8KeMtTCqeKnOFYbNLE0=;
        b=HX8zVc+T9Eg6bUMjeHeBBTgtqJIBouTq1dguP7f6x0sdEpRI3aL5x45bew2SPsfrpE
         bEX15MJ7wQSc07P4jTh1tCZcdYgC9xviCWlUH8dH9wOmfeduYrqx3rIQ/E0SSDCkqMYo
         5oRnUnYBSzotU4WHjX+4SasmodldB2/ej+P7BoVjlmUCDRfLsZz2O4elpHi4HSzfE6UY
         0aTceA95g8nYub9sJts176rCRP3mZ42QWR7kJolTGvB+X9+mkwNo7sLvNWP7z1xKKQcp
         Gaesz/RO59f9x8N3arvdirnLax2pMVXszJmG3wgDDOF5NI82mgRNqlBr9kDvlAQMUKOH
         iVbw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zxysiI+G;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id ds8si5732025pjb.110.2020.05.09.22.47.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 May 2020 22:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9E128208DB;
	Sun, 10 May 2020 05:47:23 +0000 (UTC)
Date: Sun, 10 May 2020 07:47:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dio Putra <dioput12@gmail.com>
Cc: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
Message-ID: <20200510054717.GA3365021@kroah.com>
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zxysiI+G;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
> Hi, it's first time for me to report user-space breakage in here, so
> i'm begging your pardon.
> 
> I want to report that Linux 5.4 breaking my USB mount workflow due
> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):

<snip>

Sorry, but what actually changed that you can see in the logs?

What functionality broke?  What used to work that no longer does work?

And 4.4.221 is quite different from 5.4, is that the jump that you are
seeing breakage in, or is it in some smaller jump?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200510054717.GA3365021%40kroah.com.
