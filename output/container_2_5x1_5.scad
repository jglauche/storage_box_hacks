module Container_num_x_2_5_num_y_1_5(){
  difference(){
    translate([66.125, 39.275, 0])color("red")difference(){
          translate([-66.625, -39.775, 0])color("purple")union()linear_extrude(height=45)translate([2.5, 2.5, 0])hull(){
                      circle(d=5,$fn=64);
                      translate([128.25, 0, 0])circle(d=5,$fn=64);
                      translate([0, 74.55, 0])circle(d=5,$fn=64);
                      translate([128.25, 74.55, 0])circle(d=5,$fn=64);
                    }

          translate([-65.125, -38.275, 2.296])union()linear_extrude(height=45.008)translate([1, 1, 0])hull(){
                    circle(d=2,$fn=64);
                    translate([128.25, 0, 0])circle(d=2,$fn=64);
                    translate([0, 74.55, 0])circle(d=2,$fn=64);
                    translate([128.25, 74.55, 0])circle(d=2,$fn=64);
                  }

        }

    union(){
      translate([131.75, 0, 0])union(){
          translate([-131.75, 78.05, 0])union(){
              translate([131.75, 0, 0])union(){
                  translate([-131.75, -78.05, 0])union(){
                      translate([25.85, 25.85, 0])union(){
                          translate([0, 0, -1])%linear_extrude(height=1)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          translate([0, 0, 45.002])%linear_extrude(height=1.004)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          color("red")linear_extrude(height=1.5)union(){
                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                translate([0, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                              }

                          translate([0, 0, 41.5])color("blue")linear_extrude(height=3.5)union(){
                                  translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                  translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                  translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                  translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  union(){
                                    translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                    translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                    translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                    translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  }

                                  translate([0, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                }

                        }

                      translate([-1, -1, 0])union(){
                          translate([0, 0, -1])%linear_extrude(height=1)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          translate([0, 0, 45.002])%linear_extrude(height=1.004)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          color("red")linear_extrude(height=1.5)union(){
                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                translate([0, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                              }

                          translate([0, 0, 41.5])color("blue")linear_extrude(height=3.5)union(){
                                  translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                  translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                  translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                  translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  union(){
                                    translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                    translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                    translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                    translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  }

                                  translate([0, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                }

                        }

                      translate([-1, 25.85, 0])union(){
                          translate([0, 0, -1])%linear_extrude(height=1)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          translate([0, 0, 45.002])%linear_extrude(height=1.004)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          color("red")linear_extrude(height=1.5)union(){
                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                translate([0, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                              }

                          translate([0, 0, 41.5])color("blue")linear_extrude(height=3.5)union(){
                                  translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                  translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                  translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                  translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  union(){
                                    translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                    translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                    translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                    translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  }

                                  translate([0, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                }

                        }

                      translate([25.85, -1, 0])union(){
                          translate([0, 0, -1])%linear_extrude(height=1)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          translate([0, 0, 45.002])%linear_extrude(height=1.004)union(){
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, -25.85, 0])square([51.7, 51.7]);
                                translate([-25.85, 27.85, 0])square([51.7, 51.7]);
                                translate([27.85, -25.85, 0])square([51.7, 51.7]);
                                translate([27.85, 27.85, 0])square([51.7, 51.7]);
                                translate([81.55, -25.85, 0])square([51.7, 51.7]);
                                translate([81.55, 27.85, 0])square([51.7, 51.7]);
                              }

                          color("red")linear_extrude(height=1.5)union(){
                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                difference(){
                                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                          circle(d=5,$fn=64);
                                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                        }

                                  translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                  translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                }

                                translate([0, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([53.7, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 0, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                                translate([107.4, 53.7, 0])difference(){
                                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                                            circle(d=5,$fn=64);
                                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                                          }

                                    translate([-15.35, -25.85, 0])square([30.700000000000003, 51.7]);
                                    translate([-25.85, -15.35, 0])square([51.7, 30.700000000000003]);
                                  }

                              }

                          translate([0, 0, 41.5])color("blue")linear_extrude(height=3.5)union(){
                                  translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                  translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                  translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                  translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  union(){
                                    translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                    translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                    translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                    translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                  }

                                  translate([0, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([53.7, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 0, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                  translate([107.4, 53.7, 0])union(){
                                      translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                                      translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                                      translate([23.25, -21.6, 0])square([1.6, 43.2]);
                                      translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                                    }

                                }

                        }

                    }

                  translate([-1.25, -1.25, 41.5])color("DarkOrchid")cube([2.5, 2.5, 3.6]);
                }

              translate([-1.25, -1.25, 41.5])color("DarkOrchid")cube([2.5, 2.5, 3.6]);
            }

          translate([-1.25, -1.25, 41.5])color("DarkOrchid")cube([2.5, 2.5, 3.6]);
        }

      translate([-1.25, -1.25, 41.5])color("DarkOrchid")cube([2.5, 2.5, 3.6]);
    }

  }
}
$fn=64;
Container_num_x_2_5_num_y_1_5();
