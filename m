Return-Path: <usb-storage+bncBD6LRVPZ6YGRBTPKXHVQKGQE6IKMYMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id A32ABA6AF8
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 16:14:38 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id h18sf19013005qto.18
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 07:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567520077; cv=pass;
        d=google.com; s=arc-20160816;
        b=AcVUpYprOElmkQ0oJYWF7NreA7SDr55OImaJ74o873B9PnZl7GxXizYElXGP+JxhSG
         ioX26vc0IaJrEks13Nto1KcySY5QiDCzoDHwbBXGhS9wZU++enMmnAfTyogO+lv/+BXH
         PlGj0eteFVqlN1MZGiuBTI1LDAHiTASnbrSW3XP/12wYuv1ak/Zh/b6kDa238nlCRxXF
         /oJd7OYqPXR4YZUqNabc4LcZAM8jlQd42dTJ0Hkr0E3bVWlHgZro4ZeVj+B9dr9/N0eq
         xRVrMmcQedh+53idnT+8EXDv1fSJ9DMm3zj1/wN2YZ6l8ApkgiG1bjCvXdA8L6x4ond/
         mXUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=Aezg1jwSpDbrPRrzGU0fBIl2FHR5pckex0afl58LKt0=;
        b=uMoAl+nYZluV6BQfQcQNxq9ia5PeG06DLpwvwzxbI0bPTSgUcLkyxEGyurAgxilJV7
         97fAiS3tmbYDr4DDfXssCrODwM6IfjZguvRvkeuMRpJioqK1cjvrUc0gXhxj6upbSboE
         8DbUFWo+ROQb1t+IXQlHoEbqSRcfj2b8FLTFPI5KGWLoJeWEKKLs2C+JTb1taZJLO5Lz
         kraVUtIcwcUmZWF/msFTUTBx7Px5/sp5vvJNRdv9bj/WMVwTQCJZ4VcZtefRBaE6XlZ4
         NsTuHzx+GknUomnIxOEbHJAk2/97FatkneUH7HX51udNbXo63cBG+HyeWlsvLGbckomL
         fY5Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aezg1jwSpDbrPRrzGU0fBIl2FHR5pckex0afl58LKt0=;
        b=WxCRP2N82/0vfEqIj9Yt2H90JvYrD48mqg23GZdZAd2xUPhLfIlbeaqzvSxBA0LqgR
         y0BOaZy/Yb4eamAxOnZ/73iHH87Ve2Q2hndgaXjT5atFI06ELCEY/f9hqwuSIS6OJmvl
         Q0CXX0te94frfWkAsXoVYCPnapGjaaTZiWhxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aezg1jwSpDbrPRrzGU0fBIl2FHR5pckex0afl58LKt0=;
        b=MvYb4S8ZVxVMS0/0cjGEayDq1HCgqtn3honsB+4TPJbepmxdxOTlpleIGgVGCbqNBg
         501rHwzmSdwjnbIf4CTpFcPDU3NpphMifJcWEfZzaGK1mog5TMwdejb5U/OapWvdGKfN
         5NIfKxldaqR2jecXzQACIhtbfWNhDlx9VyYgtRp+rky4/vH3acADCGOonduam/PTOgVp
         Xu1JYWsc/FhXY6AtyUCgOmoHSJ2qiuNS6GobOTt531LVPlvtDVXjB4rnXkNL/NTQfH8X
         67rhKs+tskiLDFZfT+X+22yWIBaiIcNvJVziy4c6hvP7Xxqanm1NiVrHHQSbkvNlIngJ
         ENLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW7rv5jj/AWWsba9Qdx7d8mu6Qv7ADV+e9TPu6bVYFBu1N/jLGS
	+dFqgo3RErrCBP4sZL8KZOEeGg==
X-Google-Smtp-Source: APXvYqxXyXKkIN3Z2Xy1O0apY5VR1lV1sdr66BUjDutciz+f0D7jPio3vtHfIGnJp727FT58p1R+DA==
X-Received: by 2002:a05:620a:6a8:: with SMTP id i8mr35618546qkh.5.1567520077541;
        Tue, 03 Sep 2019 07:14:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:b846:: with SMTP id i67ls5400279qkf.2.gmail; Tue, 03 Sep
 2019 07:14:37 -0700 (PDT)
X-Received: by 2002:a37:9bd4:: with SMTP id d203mr11568602qke.257.1567520077100;
        Tue, 03 Sep 2019 07:14:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567520077; cv=none;
        d=google.com; s=arc-20160816;
        b=Mtfvr1rnQm1lXScmBSg+fhn+OtZPnbBQJ8T2lM6U/jFRChDt4U9Df27LffSV2KmLOE
         JEpx8sMKLPP279ScmtlVXlwFQfFS/UVAJY/SMRpQJB7oQazZ+Lnar2BoDNjgTbhpsGQ7
         hZsT9vXdFOhnuujPOWLDQitm0mMAxmWpN/dGYTo3dWpmz5aGBRXc31apCJzbyTJ1tuko
         UycjUzySGdZtNIdgW8OJZ/SEP5yBbZuOTxsOBaKF6h/j/ADwYkmYS2ly9Iszpstc4CIB
         pstHacv8r/khKpasWwjNC1zPUu/KeyjzhjICgO0mMiYB77Br06HA7AXrhjgVCD3VrIhn
         PoQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=Aezg1jwSpDbrPRrzGU0fBIl2FHR5pckex0afl58LKt0=;
        b=v1CYSIXSZQ3IsPwKzdUQi3WkbBXkGS35D23XaQZxaJ90SRu6/8xvKPj+BQYCqJDFl1
         wB72SbV9f98ZHdtqodX81KwiVx2LsbcnIhzEuvZTvWlhK/FvcsCZqeBSOVRrsYq28ExJ
         RiV3dgDmu28JmCn92qVIaisK96PpN3KesIk9Hf5qcdg7IBumVCcXLT/g9loTEYQFergy
         4A+x+wxEUK72MUTUxOGFNXLsOJxn1LTXPf95VvQN8b5/8Ktm/4AZo/KLpq2s9yup+1rH
         uA8/eRE1CrLds4x9vwrAa9Sds/vAkl1v9oBqXpSEdQOIXrDVyzX+GdBqW25BbDzHQEfx
         iAlw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id k49si3419348qvh.140.2019.09.03.07.14.36
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 03 Sep 2019 07:14:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2738 invoked by uid 2102); 3 Sep 2019 10:14:36 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 3 Sep 2019 10:14:36 -0400
Date: Tue, 3 Sep 2019 10:14:36 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Greg KH <greg@kroah.com>
cc: Oliver Neukum <oneukum@suse.com>, Julius Werner <jwerner@chromium.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>, 
    Dan Williams <dcbw@redhat.com>, 
    Kernel development list <linux-kernel@vger.kernel.org>, 
    USB list <linux-usb@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
In-Reply-To: <20190903091953.GA12325@kroah.com>
Message-ID: <Pine.LNX.4.44L0.1909031009250.1859-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
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

On Tue, 3 Sep 2019, Greg KH wrote:

> On Tue, Sep 03, 2019 at 10:46:14AM +0200, Oliver Neukum wrote:
> > Am Montag, den 02.09.2019, 18:47 +0200 schrieb Greg KH:
> > > 
> > > This should work just fine today.  Add a new device id to the "new_id"
> > > file and then tell the driver to bind.  That's pretty much the same as a
> > > "force_bind", right?
> > 
> > That looks like a race condition by design to me.
> 
> How?
> 
> Anyway, this should all "just work" somehow, there's an old lwn.net
> article I wrote about this over a decade ago when it was added.  A
> number of subsystems use this all the time (vfio?) and I haven't heard
> any issues with it in a long time.

No, this won't "just work".  The problem is that when you write to the 
new_id file, usb_store_new_id() calls driver_attach(), which tries to 
bind the driver to any matching device.  There _will_ be other matching 
devices, and trying to bind them will cause runtime errors.

That isn't what we want.  We want to bind the driver to a _specific_ 
device and no others, even if the others match the new id.

Now, this is what writing to the sysfs "bind" file does -- except that
it won't let you bind a driver to a device it doesn't match!

So we have two problems:

	Bind a driver to a particular device,

	Even though the id's for the device don't match the driver.

The kernel already contains solutions for each of these problems, but 
nothing that can handle both at once.

Alan Stern

