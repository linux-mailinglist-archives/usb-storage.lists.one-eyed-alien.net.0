Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZOES34AKGQEMNBJMSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EDB21851C
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jul 2020 12:39:34 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id l3sf1457254pjh.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jul 2020 03:39:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594204773; cv=pass;
        d=google.com; s=arc-20160816;
        b=wl6Z0JNIH0zB4S0V0yy5DKTFolJ4yuNMMyydio/2/zgulIL26Rdm6oEE34nZvQjkrN
         Cuf+Td7Rj49ZltraFQkbHu+OFAL5Fhen5d44tKCOGr+THyb8PDLc0gyFvnsWl+vTdQkH
         3u+5R1vSZBCclPiNb6yPGf+BGLrSyk8mNEScxVuBz28sjx3W9Gx/xU9K3GTVCQ5jRft4
         7cM8SnqC2UrwA2K8dwdrp6h30UzTzC+LWhan5jQsi0FguS8vLOIi03eCuOT0owKLzJOB
         J/uXgMxtFqWAjUb59sPdm6OrLDtWmQ8kRVCdP4iOp9GMMi63ontru6hNsbdsbdbK8bnh
         apTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DMW6XDi7nxPGmYWm7MfUh+L7GA6Z2NVl9W8ZDV1wCJ0=;
        b=PwAxuRVfkdoGW7ljmjqoQmyqzWcoJaNVPEmDwD4vU/SAGaAV1GlH4OBqgKJegsxy/V
         NivSHW1/mZDmyQ8k1eOQ+ReHy31a1gezx9vQmpsiqCYHi3721alL781WqWSUPy/hhC9Y
         cycERKSsBL7UodJ3YNci/q5BS2Nt7/oojcXJI+PRsWkRAHaZcfKfajpcEzsOuMLZyvhc
         0ru7NSiDDLPUa/rWh7Mvl3vhxVM9rg8fTN1f6klMugl50u1XvbKMO0F1cA1Rcr2Whunh
         Y+Yfl5ahPWMMrmRE0Pjlim4IzJ5QOhZUIwdTfPjjjOKBrYkJDKLqs+zCiAS5vmCTx6t7
         LAoQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LUVVW7UK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DMW6XDi7nxPGmYWm7MfUh+L7GA6Z2NVl9W8ZDV1wCJ0=;
        b=d2PglQoPKMQKf6xkSBuLlQSaLuCaPKFzES4nko/q0bE3ZCxIF/SjkB+CNfRQbhSYrq
         flH60MOxXx1wKumE0AQ63fQdTzPLVjOsQSXYXXwpvRrCiVEnEf4QQ/g3t5D9qoGN4n6z
         wLJ03VT1NeF9m8SLBoCxKdWNkv+AK9TYjGqeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DMW6XDi7nxPGmYWm7MfUh+L7GA6Z2NVl9W8ZDV1wCJ0=;
        b=FcNzT2qDXmDpf/Qi0yYd2WMN1P8b32ZAzFGdc9pBLAfm0mM3ZDpDEJkoPHisO0Rd5S
         viEYEsp7VfnmJzGUPIp4VpDSzCXQCk8xZuIRDMy2jnOSAclyD87blTFSEyQZcYcVEuqO
         KbqKjQF7LcNPV5kw7XJLef8qlvJkG93EuyeCXr0SS0CvB+gXk6C8CLuz7mlnZ6HZ4mV5
         ovcLMCM0U+jk/jRroBbIdnmuR/7w2nz253Jyb4B1yNQaqgOT2A5G1t+T8Hgjyl3GdcGt
         sCli9VTBwzJG3DQUNMw8qMnDcoMD//V4jn0vmX6DheaC06PbhULTohCcsSTF/5JZVJTS
         lNkg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5334SzVMtp9UtYtU+2w+mxdQq4mV8dS4Z9jzIDO3eB/Nc9msD4Co
	z4eY1iLg35mFqWT5gKpzQcEYuQ==
X-Google-Smtp-Source: ABdhPJzfPKS4cDsxyEm/qDrK4kVEdu5F3oReKOy/Zmx3er4I0GCmxJ75zDBnTXnERuNl2BGf7KAvsg==
X-Received: by 2002:a62:1610:: with SMTP id 16mr13885015pfw.113.1594204773400;
        Wed, 08 Jul 2020 03:39:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:6b02:: with SMTP id o2ls832916plk.7.gmail; Wed, 08
 Jul 2020 03:39:32 -0700 (PDT)
X-Received: by 2002:a17:902:d892:: with SMTP id b18mr51282415plz.335.1594204772682;
        Wed, 08 Jul 2020 03:39:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594204772; cv=none;
        d=google.com; s=arc-20160816;
        b=eImn6O0xq2HOm13gR8vRmvT9QAczXJuYe9h0UwqusuEfMoDqxdlDaFMKyKlCr5+4/s
         Kgqd3NYsIjZ7jBfOD8cOx8/lPs37vfWdDLklLUhlKUnTfvOUzE5cvChxyOodQ90T4/iq
         nXWO3VVJq2P1+Y8YElY3Lb6Qlde1HB6NsxvLt8TZ+bAME1iuc3fiuSPhZNlntV8j9Q1B
         TFnsFBnepT6qMcbzaTMGB1YpR/UwEs3whwlHYajwxGMkUJe0rZfRomFFq69TUNsRNn8M
         Lbl/2YvVD5LcrHnMl9+VhhXlTsl857LYx8p5LMNCWgGWds3JxyOUSEewA0DHGKsC/g6G
         Hy/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=C+dKAY+NlI0eAzFr/eUv8dy/YrqzTracpUPjsPNLWj8=;
        b=NDd1ismwOGwd/GXWUd8cNkWoXbQhXCZKwjAsEFwz1WFvxCeAmb/8pP2AtdNUjUokBR
         d3eldSY+D/alV/FJ8OIBeBE6VwpY8A0j81vTq0bfLXrFvttgs7r6gf2f6hIRVePY4EuH
         f6CmuAHXn4E7NCDN2i3BEn5FP0gQzPkD8KTbUt9i/VmIwmV2Cy5vTGUlE2vEfUdN6jqW
         QskOdBhhYfAXJ4dA/jc/yJB4r6LMEYMc65+iT9r1YD89iCDGc/p9Ds4jzEkEUgdbPEbg
         yKYHkV0/MtnK644Gi/8wTj2p3CKQiI7/5IuHy40CZlfOdih4zJDCp8oDRLMJUehrD+zT
         Z1Zw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LUVVW7UK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id na11si3985594pjb.41.2020.07.08.03.39.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jul 2020 03:39:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D130D20739;
	Wed,  8 Jul 2020 10:39:31 +0000 (UTC)
Date: Wed, 8 Jul 2020 12:39:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
Message-ID: <20200708103928.GC585606@kroah.com>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200708095500.13694-1-grandmaster@al2klimov.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LUVVW7UK;       spf=pass
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

On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wrote:
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
> 
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
> 
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>

Your subject lines are very odd compared to all patches for this
subsystem, as well as all other kernel subsystems.  Any reason you are
doing it this way and not the normal and standard method of:
	USB: storage: replace http links with https

That would look more uniform as well as not shout at anyone.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200708103928.GC585606%40kroah.com.
