Return-Path: <usb-storage+bncBDDJNTW5VUMBBV4SZPVQKGQERM2HNQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 088D5AC1C4
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 23:02:16 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id n2sf3094787wru.9
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 14:02:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567803735; cv=pass;
        d=google.com; s=arc-20160816;
        b=079EJhYF6oa186Fq1Rt4eb4qlcTJPOqpvGNeqCYW27b4k7p0l4t2KWm1HWTuK2VpDt
         zUVc+lkk209glOc114JlPUsJ5i0wnMb3NRkZQn7DwNgYKqxtLk17KFumxP851qlgQ/ao
         fK00aj1A48SbwG7ca0Nn2mGdd6X57aT+tJ2sMx+70lPHS0XqyImdkNalnF+2xnuqeiIx
         muJKdG70Yn9MJbawY1REb25NsXL11A8/YHS1xkG7FsbHg5TDNvLy3cvmVTTblxoHmKdI
         3eypfitkxU0JUnIZBBNG8txj+tOOp4Hd3Hl4cO0aukjGZ9a3Xr+MfsANAqJuUG6Yrs1L
         J/OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=C5vGG96PIe8tzGPLUeLNdEJvLAG/ohk0OuvtwsMHcxg=;
        b=PL5OEBk9xssqCoL0xZyV5sZ3uDODNKaaAj2CltNojH+SyCxTqsd1/iwh+YwKrHbj0f
         TI4pCeOArl4GeICUhPqdMwNzoApjZArQ8gl+GLhGmCkML+gydYE1IQ73IpbY0asmFM/M
         AokO1koUSaOquO2O84l0lT7t5eKgUP9ODZaC8DNL+VoaGwScgCgvDYWeEeMcm+avBkUN
         w40nVuQGRs9YeDgBVwQjwL1oB183E22nNkBATiTBaK0MZtesYeSSZYRYkxK26ULM6Mi6
         tu10bzAxOfsSXVC8cTnKyVH7ZxQYx28lAcmM8Y2mhoWBS1/p/dxl2DhMUZwEsl61lFjA
         3PPg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iCYCAb3l;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5vGG96PIe8tzGPLUeLNdEJvLAG/ohk0OuvtwsMHcxg=;
        b=NK3EjivXXBm7lhqGVCaFl/opEJ8oCqn/5ABGvVDHxseEXLzPb/q3MwoUuiIZ2GuIVY
         j0t+bhwFBEM0cMtknlKTUDL0EjDJ76UqglKhEhHoq5PQMGG8PHy6J45n01VvGo3CSj8u
         dwYO9X7PAIT/2tsvifRkRDCYOQLfCFAGtRsAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5vGG96PIe8tzGPLUeLNdEJvLAG/ohk0OuvtwsMHcxg=;
        b=F2ae53ZsxkNG//UT1ZmxYUiUpWnNwPE3YBrS99zWdG8s23NtRlyJVCDyfOCHVlx5zh
         beFH0/FXblygsh6HG5q93xLobht6m4DIn2gyT+alN8cirgQSxJlNXOY/onpkI7W51UZU
         C+SVIBWi5KD4kmbt2GK9RP6xK1oADofO1n4KRfuG/Z5/OWvNBFydXACC5nXAsc7C9eyq
         CygJHvoDn50mpTJq3eAwQcClR8MWE3rCZnuPYvOEWBnVquHE/ZQ+ez/DDvtgBAVZTueR
         qkjQ3C1ZseEH++xiWBD42738vpT246/cOOC5UbGFv5Ntn2UZ29WYk10LfT0Bp7YTaJOZ
         xCOA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUXY0THIwbC2XycTr++V8tCTjzKyGdXoikSy+bbu88Dp5J3s1+q
	WEZrT0ekNgS7397nqLP0DAUNTA==
X-Google-Smtp-Source: APXvYqw0RNczJw7mz9DNfkzLEqL3o6W7ZaqARXNRTqZAktJJ9EWHASbSA6wEXhry2a33AGrLXrhCwQ==
X-Received: by 2002:a1c:7f4f:: with SMTP id a76mr2679148wmd.117.1567803735582;
        Fri, 06 Sep 2019 14:02:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:7502:: with SMTP id o2ls2450656wmc.4.gmail; Fri, 06 Sep
 2019 14:02:14 -0700 (PDT)
X-Received: by 2002:a1c:20cf:: with SMTP id g198mr9317847wmg.66.1567803734756;
        Fri, 06 Sep 2019 14:02:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567803734; cv=none;
        d=google.com; s=arc-20160816;
        b=Vm20tZD9EeNT29OkYrH0AQz1dOyZCiw5Loc5dPhHFt0UEMeGQL9vMIQHCYOko7ji9X
         T56LnFtYxy1VRgxqtV4J33ESNw61KI2In7HfxRg9HfH6zXaiMAqidchAivb5f1fUH5H3
         CXgxry+ko8yazmlRqCmUuVWk2QWTv8oM2wtX4juMSRNEPC7tW1BAYYTef9n4Tk5wSwkj
         CIBIFdA4piGBVRbSIgbAcQ6Xy5qhgkOj7wtPxfSL3YQ4V38yb+IKRXCmhHdxyq4YVxNx
         c7TVRijPZywjBX/rx5SibyC+eUK5OFhkLgk2PzthqdCBYVSWqphDah7TR7XnAwL+CUHN
         eYBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wWTPA4QfT/u7KTpMZfkRfalR4VSn/NKlHg21Ui/OIDk=;
        b=p0b+48QkSv5aVaZeFdTBJzI4isxNVPrj1fTKkTb+GxsgPudd5ctzs1EqP8PHTW/Ie5
         hwcxdJZLLB/0DpmmTN67nJwb+ce8D2VnM+lFD5oKflCVkMstzHyKCAJtp5cRlPQ/aXNh
         WY3J4bl99u8/ju3Ea8OzMUdFr0esIII6DLhXJxRZNG6LkxlkuCDXpS+jeK+t3/KmW5XH
         SEfyndZleK7nTfa6xJEw4PGcvKo+Vht/1NWt/9ieFQvfiilM+oXBQw4OlL4ehk8LiONU
         Ph8oNgA2aPPzrLNeKN7ZNcIBVu0M32oedRrc0f3jPZymeTEt9Wr6/w7dgbPzKnzD9pjo
         wq9g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iCYCAb3l;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id j10sor5733554wrq.3.2019.09.06.14.02.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 14:02:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:f284:: with SMTP id k4mr9018630wro.294.1567803734187;
 Fri, 06 Sep 2019 14:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190903091953.GA12325@kroah.com> <Pine.LNX.4.44L0.1909031009250.1859-100000@iolanthe.rowland.org>
In-Reply-To: <Pine.LNX.4.44L0.1909031009250.1859-100000@iolanthe.rowland.org>
From: Julius Werner <jwerner@chromium.org>
Date: Fri, 6 Sep 2019 14:02:00 -0700
Message-ID: <CAODwPW-FybmnZ97eTfShya_z1Oxrc91ofe6yC4vNN2ri51V5fw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg KH <greg@kroah.com>, Oliver Neukum <oneukum@suse.com>, 
	Julius Werner <jwerner@chromium.org>, 
	USB Storage list <usb-storage@lists.one-eyed-alien.net>, Dan Williams <dcbw@redhat.com>, 
	Kernel development list <linux-kernel@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jwerner@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iCYCAb3l;       spf=pass
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

FWIW, I found a suitable workaround now to get my use case working
with existing kernels: I can do the mode switch from userspace, then
after the device reenumerates I can manually disable any interfaces I
don't like by writing 0 to their 'authorized' node, and then I write
the VID/PID to usb-storage/new_id.

I still think it would be nice in general to be able to force a driver
to bind a specific device (rather than a VID/PID match), but it's not
a pressing need for me anymore.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAODwPW-FybmnZ97eTfShya_z1Oxrc91ofe6yC4vNN2ri51V5fw%40mail.gmail.com.
