Return-Path: <usb-storage+bncBDDJNTW5VUMBB7EHS7VQKGQELIQ3GYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E16B9F71C
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 01:59:57 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id v4sf214771wmh.9
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 16:59:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566950397; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfatWeiV514qcGazB3NYHLVgjLxSc0tDo+0nnruLtQptBAOFlJxJ6Qdo2DxOG51vLl
         KAO46vcLKC/sXcAyZB4GDNRB/fEn+3Z0raZJyX8VGyJbvbS9N23U0sK5ThxCw6DlM8eW
         N6n95k1B5eHaaFbLojC4OymsItTEZJmdKYNvAHBgUmQeKj7JH/XitRzw2APUKKhifIbn
         A7WPoqLBHtxdOaUYE39dd1xq6L9RwMF3pYiGSO4xwTabh5umbiwGbGrOSdIcSuQiIDcD
         G4MyeNnBuyPd1l0a9hICTOA5MdOOB8Vo6IhAjJAeCipLrpkB/XcTmfrp7k1Ni9zMCYB3
         Z2TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NComU376+fDkxsfDIn70vxnXJ1dLO+bruMfZ8KkQuFk=;
        b=WqXrPojcBtEQAaDv4v8Izorv+OTmDinNyQcxtKaYTZT6qGUpR+MjnF+O7mYIaVkRTd
         xDQVO0FRiYDez+Apuig5WUZ5djMQg3KfpWRFLC1UHzMLe/n9EuARl2mEpHxPPRE4hF7I
         6iOX+81Y2zk/bhfJfN9WwJDjx7H/Ott4yQiHcGqGteYsPQjx4ZaRqClVmAc5DzbW6lNh
         9SiWXpMNQnT1YjUWEVIXjFJnliHkCHNmyf6yr77ANgJ7mvsHVbIvSvYv0mTTAOkHzafe
         XPUL2G8YO3DDkQbj0rJGPrKFmZIqrSa6rcqaAGz/p9lBN13w3KIHsTdBnvriPfIhkxYa
         H0+w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q5Z5XfDA;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NComU376+fDkxsfDIn70vxnXJ1dLO+bruMfZ8KkQuFk=;
        b=fvrtoesI+C1BMF3YKLXplBhWhC+eyiNMllt3AuOhNO17DG4mTYbCW2yAa2WHNQZ/6t
         8EzO9o3pLuTPwF131Dq4h45UUt0CsmEqZhg7RN8y0iJgsAoOxzTLxk0pT3Zhsb2+w6Qh
         +Xm7S7etNqRI/VGsllTIP15ZK5MTkhI65jc64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NComU376+fDkxsfDIn70vxnXJ1dLO+bruMfZ8KkQuFk=;
        b=UFN0TrOkmKw0r+JvEAFjDH32AVxPqUX/qJGBNd9q2qcQVryr9iVcr65juGaXKh38T0
         txikXv8Uyn3tDZcDtV+EZUUUExtUfgNBxF9dF2hNX1zmCrmMEh9GSdXpCIRDT33aVkfU
         jrJvuP10Id4ehLt38n6O+S0OYVu9qR0bjNiApTGIxpioX8j2YahBBwLGOv/3u6xHOIBP
         4jK40bBgnqUXktcbK7RejUCqwDK6MYzbUeqJBlhWVoZFtlPF1Hakl1KN4BnUMUvBK5Zs
         TLN8m6ysgXePlfEniHsbs3Jspn682MNKyPy0I+SU0dfzCYjidLMWtOWnmLGsY2gJbMRb
         UdBQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVVM3qitQSQdCD9HTj29srAEp8H3j/5JGHolp0dMoZ1lO6L6vRS
	hm5WoGKjhRq7tjIbxSnFKociAg==
X-Google-Smtp-Source: APXvYqzsWVZQPknsszHVLF2k78EsZdHYfkujwOsD5Gjay5v+q8C76kH4FSFyOl1WXjWWEofQeXq9hg==
X-Received: by 2002:a5d:4a0e:: with SMTP id m14mr700406wrq.72.1566950397148;
        Tue, 27 Aug 2019 16:59:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:6484:: with SMTP id y126ls228052wmb.1.canary-gmail; Tue,
 27 Aug 2019 16:59:56 -0700 (PDT)
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr941587wmh.65.1566950396469;
        Tue, 27 Aug 2019 16:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566950396; cv=none;
        d=google.com; s=arc-20160816;
        b=H30UUXF1krlBr54WSaeKgJ4nHRqg5SNu+YXXbbQMoomV0B1IhCiyIizSiX8NdljBlj
         4RLyxNuCl3mcJqS5Dlel6ktDdynD+PQMYOH8LjT/iZSucj+/+fgUerS85A4s4s628a6J
         X/SXO43/bIPFjFxx0yhngO2cM1KqCd/kgm8X5I0RmJ3Ms69j6XriZeM8XooJC20LRuaN
         QYf2CQE0QdpQNNrXzxWCxmz3SdG7T/OuzrRpypzZ19bz/+ZSib0R95FrxKWaF9chv5Bh
         u3heM+78SHp9kemWFI7HXamRRUMPt1ChyCeLvNuhHL58uEWXZJgz4vAwMAFymSoTsk0l
         tv2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W77jTG8bpy693vui4bkkDm6EWrj+wqx5LPjIltQ2Bvg=;
        b=s3JhHsQTKkTO/bJ2TGrF008z4UsKNHUd4SnwBbNRNVnnAOvdUaO1PQcuIrWL8tB4qj
         +He7Cb56xSV6OD+j7rdTjv5w+ap/dLH6IRgG+dlEeUxktddQOpVZFDkbKtXecVSPzqrr
         E8SnjJ85kvakCAC88HuvKKT3HemnvkKYE0t7vvaaZJZyT3dBMlmVP6Ycw1GPC2Vztrti
         +a7XjmLQSxOenVbo9aHwZKhCImnHVAHPy2uzJQ7MxF0pDrKnUBgi0rPczifjQFfClcyi
         Vf9J5v+ljJ80NWpqJu6X4eVoosqo0cyLCyjXUl+z69mDrBSLJ2oAQqzbAstLqXGIVgpG
         gflA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q5Z5XfDA;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id b131sor368289wmg.27.2019.08.27.16.59.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 27 Aug 2019 16:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr1001230wml.102.1566950396022;
 Tue, 27 Aug 2019 16:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190827231409.253037-1-jwerner@chromium.org> <CAA6KcBAykS+VkhkcF42PhGyNu8KAEoaYPgA9-ru_HCxKrAEZzg@mail.gmail.com>
In-Reply-To: <CAA6KcBAykS+VkhkcF42PhGyNu8KAEoaYPgA9-ru_HCxKrAEZzg@mail.gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 27 Aug 2019 16:59:43 -0700
Message-ID: <CAODwPW-+pPtiBh8Swn-cFs--2YaG6fMDyAzLXRucoweV50hDwA@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
To: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-usb@vger.kernel.org, 
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jwerner@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q5Z5XfDA;       spf=pass
 (google.com: domain of jwerner@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=jwerner@google.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=chromium.org
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

> Why not do the mode switch from userspace?  I thought we were trying to move all the mode-switching stuff in that direction.....

I need to tie in to the main USB mass storage driver in a way that I
think would make it too complicated to move the mode switching part to
userspace. See the part I'm adding to initializers.c... that one has
to be in the kernel since it operates on the device after the mode
switch when it is claimed by the normal USB storage driver. But the
mode switch part has to communicate information to it to make sure it
picks up the right device (just relying on the normal USB device
matching isn't enough in this case, because all Android devices in AOA
mode identify themselves with that well-known VID/PID... I don't know
if there's any other kernel driver using this protocol today, but
there may be at some point and then it becomes important to make sure
you really grab the device you meant to grab). Some of that
information (the 'route' field) isn't even directly available from
userspace (I could use the device name string instead and that would
roughly come out to the same thing, but seems less clean to me).

So I could either do the mode switch in userspace and add a big custom
sysfs interface to the usb-storage driver to allow userspace to
configure all this, or I can add a small kernel shim driver like in
this patch. Considering how little code the shim driver actually needs
I expect it would come out to roughly the same amount of kernel code
in both cases, and I feel like this version is much simpler to follow
and fits cleaner in the existing "unusual device" driver
infrastructure.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAODwPW-%2BpPtiBh8Swn-cFs--2YaG6fMDyAzLXRucoweV50hDwA%40mail.gmail.com.
